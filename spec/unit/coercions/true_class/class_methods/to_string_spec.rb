describe Virtus::Coercion::TrueClass, '.to_string' do
  before do
    puts "DFGKSDFOGKOGFKDGOKFDOGKDFOGKOGSDFGOSFDKG"
    puts Virtus::Coercion::TrueClass.primitive
    @object = Virtus::Coercion::TrueClass
    @true_class = true
  end

  it "should be an instance of string" do
    @object.to_string(@true_class).is_a?(String).should.be.true
  end

  it "should eq('true')" do
    @object.to_string(@true_class).should.equal('true')
  end

end

