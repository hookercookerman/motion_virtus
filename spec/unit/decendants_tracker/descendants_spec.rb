describe Virtus::DescendantsTracker, '#descendants' do
  before do
    @described_class = Class.new { extend Virtus::DescendantsTracker } 
    @object = @described_class
  end

  describe "when there are no descendants" do
    it "should be empty" do
      @object.descendants.should.be.empty
    end
  end

  describe "when there are descendants" do
    before do
       @descendant = Class.new(@object)
    end
    it "should equal the given descendant" do
      @object.descendants.should.equal([@descendant])
    end
  end
end
