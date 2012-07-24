describe Virtus::TypeLookup, '#determine_type' do
  before do
    @object = Class.new do
      extend Virtus::DescendantsTracker
      extend Virtus::TypeLookup
    end
    @default =  @object.const_set :Object, Class.new(@object) {
      def self.primitive() ::Object end
    }
    @descendant = @object.const_set :String, Class.new(@default) {
      def self.primitive() ::String end
    }
    @extra = Class.new(@default)
  end

  #subject { object.determine_type(class_or_name) }

  # assert the classes are subclassed in a specific order that will trigger
  # the bug that this commit fixes. Do not remove or change the order below.
  it 'has the descendants in the expected order' do
    @object.descendants.should.equal([ @extra, @descendant, @default ])
  end

  describe "with a TypeLookup class" do
    describe "when the argument is a descendant of the object" do

      before do
        @class_or_name = @descendant
      end

      it "should equal descendant" do
        @object.determine_type(@class_or_name).should.equal(@descendant)
      end
    end

    describe "when the argument is the same object" do
      before do
        @class_or_name = @object
      end
      it "should be nil" do
        @object.determine_type(@class_or_name).should.be.nil
      end
    end

    describe "with a class" do
      describe "when the argument is a known primative" do
        before do
          @class_or_name = String
        end

        it "should equal descendant" do
          @object.determine_type(@class_or_name).should.equal(@descendant)
        end
      end

      describe "when the argument is an unknown class" do
        before do
          @class_or_name = Class.new
        end
        it "should equal default" do
          @object.determine_type(@class_or_name).should.equal(@default)
        end
      end
    end

    describe "with an instance" do

      describe "when the argument is the name of a known constant" do
        before do
          @class_or_name = "String"
        end

        it "should equal descendant" do
          @object.determine_type(@class_or_name).should.equal(@descendant)
        end
      end

      describe "when the argument does not stringify to a valid constant name" do
        before do
          @class_or_name = Object.new
        end

        it "should equal descendant" do
          @object.determine_type(@class_or_name).should.be.nil
        end
      end


      describe "when the argument is not the name of a known constant" do
        before do
          @class_or_name = "Unknown"
        end

        it "should equal descendant" do
          @object.determine_type(@class_or_name).should.be.nil
        end
      end

    end
  end
end

  #context 'with a TypeLookup class' do
    #context 'when the argument is a descendant of the object' do
      #let(:class_or_name) { descendant }

      #it { should equal(descendant) }
    #end

    #context 'when the argument is the same object' do
      #let(:class_or_name) { object }

      #it { should be_nil }
    #end
  #end

  #context 'with a class' do
    #context 'when the argument is a known primitive' do
      #let(:class_or_name) { ::String }

      #it { should equal(descendant) }
    #end

    #context 'when the argument is an unknown class' do
      #let(:class_or_name) { Class.new }

      #it { should equal(default) }
    #end
  #end

  #context 'with an instance' do
    #context 'when the argument is the name of a known constant' do
      #let(:class_or_name) { 'String' }

      #it { should equal(descendant) }
    #end

    #context 'when the argument does not stringify to a valid constant name' do
      #let(:class_or_name) { Object.new }

      #it { should be_nil }
    #end

    #context 'when the argument is not the name of a known constant' do
      #let(:class_or_name) { 'Unknown' }

      #it { should be_nil }
    #end
  #end
#end

