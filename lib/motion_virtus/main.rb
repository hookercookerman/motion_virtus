
# Base module which adds Attribute API to your classes
module Virtus

  # Provides args for const_get and const_defined? to make them behave
  # consistently across different versions of ruby
  EXTRA_CONST_ARGS = (RUBY_VERSION < '1.9' ? [] : [ false ]).freeze

  # Represents an undefined parameter used by auto-generated option methods
  Undefined = Object.new.freeze

  # Extends base class or a module with virtus methods
  #
  # @param [Class] descendant
  #
  # @return [undefined]
  #
  # @api private
  def self.included(object)
    puts "INCLUSING THE CLASSINCASIDNDSFI DFAFADSFDS#{object}"
    super
    if Class === object
      puts "INCLUSING THE CLASSINCASIDNDSFI"
      object.send(:include, ClassInclusions)
    else
      object.extend(ModuleExtensions)
    end
  end
  private_class_method :included

  # Extends an object with virtus extensions
  #
  # @param [Object] object
  #
  # @return [undefined]
  #
  # @api private
  def self.extended(object)
    object.extend(Extensions)
  end
  private_class_method :extended

end # module Virtus

