
describe Virtus::Options, '#accepted_options' do
  
  before do
    @object = Class.new do
      extend Virtus::DescendantsTracker
      extend Virtus::Options
    end
    @options = [:width, :height]
    @object.accept_options(*@options)
  end

  it "should respond to 'accepted options'" do
    @object.respond_to?(:accepted_options).should.be.true
  end

  it "should be an instance of array" do
    @object.accepted_options.is_a?(Array).should.be.true
  end

  it "should include all the options given" do
    @object.accepted_options.should.equal(@options)
  end
end
