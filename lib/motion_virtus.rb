unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "motion_virtus/version" unless defined?(MotionVirtus::VERSION)

# Supports
module Virtus
  Undefined = Object.new.freeze
end

BW.require File.expand_path('../motion_virtus/hacks.rb', __FILE__)

BW.require File.expand_path('../motion_virtus/**/*.rb', __FILE__) do

  file("lib/motion_virtus/support/type_lookup.rb").depends_on('lib/motion_virtus/support/options.rb')

  file("lib/motion_virtus/coercion.rb").depends_on ["lib/motion_virtus/support/descendants_tracker.rb", "lib/motion_virtus/support/options.rb", "lib/motion_virtus/support/type_lookup.rb" ]

  file("lib/motion_virtus/coercion/object.rb").depends_on ["lib/motion_virtus/support/options.rb", 'lib/motion_virtus/coercion.rb']

  ["time", "integer", "false_class", 'true_class', "numeric", "array", "string", "symbol", "hash", "decimal", "float"].each do |file|
    file("lib/motion_virtus/coercion/#{file}.rb").depends_on('lib/motion_virtus/coercion.rb')
    file("lib/motion_virtus/coercion/#{file}.rb").depends_on('lib/motion_virtus/coercion/object.rb')
  end

  # Coercions
  file("lib/motion_virtus/coercion/float.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')
  file("lib/motion_virtus/coercion/integer.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')
  file("lib/motion_virtus/coercion/time.rb").depends_on('lib/motion_virtus/coercion/time_coercions.rb')
  file("lib/motion_virtus/coercion/decimal.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')

  # Attributes
  file("lib/motion_virtus/attribute.rb").depends_on ["lib/motion_virtus/support/descendants_tracker.rb", "lib/motion_virtus/support/options.rb", "lib/motion_virtus/support/type_lookup.rb" ]

  #Default
  ["from_callable", "from_clonable", "from_symbol"].each do |file|
    file("lib/motion_virtus/attribute.rb").depends_on("lib/motion_virtus/attribute/default_value/#{file}.rb")
  end

  # Attributes Emebbedd Value
  ["from_open_struct", "from_struct"].each do |file|
    file("lib/motion_virtus/attribute.rb").depends_on("lib/motion_virtus/attribute/embedded_value/#{file}.rb")
  end

  # Other shit
  file("lib/motion_virtus/class_inclusions.rb").depends_on('lib/motion_virtus/class_methods.rb')
  file("lib/motion_virtus/class_inclusions.rb").depends_on('lib/motion_virtus/instance_methods.rb')

  file("lib/motion_virtus/class_methods.rb").depends_on('lib/motion_virtus/extensions.rb')
  file("lib/motion_virtus/class_methods.rb").depends_on('lib/motion_virtus/support/descendants_tracker.rb')
  
end


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
    super
    if Class === object
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




#BW.require File.expand_path('../motion_virtus/**/*.rb', __FILE__) do

#end

# Base module which adds Attribute API to your classes
#module Virtus

  ## Represents an undefined parameter used by auto-generated option methods
  #Undefined = Object.new.freeze

  ## Extends base class or a module with virtus methods
  ##
  ## @param [Class] descendant
  ##
  ## @return [undefined]
  ##
  ## @api private
  #def self.included(object)
    #super
    #if Class === object
      #object.send(:include, ClassInclusions)
    #else
      #object.extend(ModuleExtensions)
    #end
  #end
  #private_class_method :included

  ## Extends an object with virtus extensions
  ##
  ## @param [Object] object
  ##
  ## @return [undefined]
  ##
  ## @api private
  #def self.extended(object)
    #object.extend(Extensions)
  #end
  #private_class_method :extended

#end # module Virtus
