describe Virtus::TypeLookup, '.extended' do
  before do
    @type = Class.new { extend Virtus::TypeLookup }
  end

  it 'sets type_lookup_catch ivar' do
    @type.instance_variable_get('@type_lookup_cache').should.equal({})
  end
end

