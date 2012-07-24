
describe Virtus::Options, '#accept_options' do
  class Model
    extend Virtus::DescendantsTracker
    extend Virtus::Options
  end

  before do
    @object = Model
    @descendant = Class.new(@object)
    @new_option = :width
    @object.accept_options(@new_option)
  end

  it "should allow object to respond_to accept options" do
    @object.respond_to?(:accept_options).should.be.true
  end

  it "should allow descendant to respond_to accept options" do
    @descendant.respond_to?(:accept_options).should.be.true
  end

  it "should set new accepted options on itself" do
    @object.accepted_options.should.include(@new_option)
  end

  it "should also set on its descendants" do
    @descendant.accepted_options.should.include(@new_option)
  end

  it "should create option accessor (the bloody tricky bit)" do
    @object.respond_to?(@new_option).should.be.true
  end

  it "should alos create option accessor on the descendants" do
    @descendant.respond_to?(@new_option).should.be.true
  end
end
