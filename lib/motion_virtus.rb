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

  file("lib/motion_virtus/coercion/float.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')
  file("lib/motion_virtus/coercion/integer.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')
  file("lib/motion_virtus/coercion/time.rb").depends_on('lib/motion_virtus/coercion/time_coercions.rb')
  file("lib/motion_virtus/coercion/decimal.rb").depends_on('lib/motion_virtus/coercion/numeric.rb')

end



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
