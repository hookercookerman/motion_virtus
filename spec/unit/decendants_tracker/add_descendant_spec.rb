describe Virtus::DescendantsTracker, '#add_descendant' do
  before do
    @described_class = Class.new { extend Virtus::DescendantsTracker }
    @object = Class.new(@described_class)
    @descendant = Class.new
  end

  it "should equal object" do
    @object.add_descendant(@descendant).should.equal(@object)
  end

  it "should prepend the class to the descendants" do
    @object.descendants << original = Class.new
    lambda{@object.add_descendant(@descendant)}.should.change {@object.descendants.dup} 
  end

  it "should prepend the class to the superclass descendants" do
    lambda{@object.add_descendant(@descendant)}.should.change {@object.superclass.descendants.dup}
  end
end
