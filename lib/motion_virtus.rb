unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require "motion_virtus/version" unless defined?(MotionVirtus::VERSION)

# Supports
module Virtus
  Undefined = Object.new.freeze
end

BubbleWrap.require('motion/hacks.rb')

require "motion_virtus/support/descendants_tracker"

#require "motion_virtus/support/equalizer"
require "motion_virtus/support/options"

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
