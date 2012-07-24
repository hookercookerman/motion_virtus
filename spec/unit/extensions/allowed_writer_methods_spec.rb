#describe Virtus::Extensions, '#allowed_writer_methods' do
  #before do
    #@object = Class.new do
      #include Virtus
      #attribute :virtus_attribute, String
      #attr_accessor :some_other_attribute
    #private
      #attr_accessor :private_attribute
    #end
  #end

  #it "should include virtus_attribute=" do
    #puts %w[ == != === []= attributes= ].class
    #object.allowed_writer_methods.should.include('virtus_attribute=')
  #end

  #it { should include('virtus_attribute=') }
  #it { should include('some_other_attribute=') }
  #it { should_not include('private_attribute=') }

  #%w[ == != === []= attributes= ].each do |invalid_method|
    #it { should_not include(invalid_method) }
  #end

  #it { should be_frozen }
#end
