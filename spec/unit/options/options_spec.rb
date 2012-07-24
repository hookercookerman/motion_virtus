describe Virtus::Options, '#options'  do
  before do
    @object = Class.new do
      extend Virtus::Options, Virtus::DescendantsTracker
    end
  end

  describe 'with an option that has a default value' do
    before do
      @default_value = "beans"
      @object.accept_options :name
      @object.name @default_value
    end

    it "should be an instance of hash" do
      @object.options.is_a?(Hash).should.equal(true)
    end

    it "should have name of 'beans' " do
      @object.options.should.equal(:name => @default_value)
    end

  end

  describe "with an option that does not have a default value" do
    before do
      @object.accept_options :name
    end

    it "should be an instance of hash" do
      @object.options.is_a?(Hash).should.equal(true)
    end

    it "should be empty" do
      @object.options.should.be.empty
    end
  end
end
