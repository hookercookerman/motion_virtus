describe Virtus::TypeLookup, '#primitive' do
  before do
    @object = Class.new { extend Virtus::TypeLookup }
  end

  it "should raise error if the primative is not set" do
    lambda{@object.primitive}.should.raise(NotImplementedError, "#{@object}.primitive must be implemented")
  end
end

