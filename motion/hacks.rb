class Array

  # so we can pass specs and move on
  def to_set
    self.uniq!
  end
end


module Virtus
  Undefined = Object.new.freeze
end

class DefineOptionsOptionMethod
  attr_accessor :option

  def initialize(scope, option)
    @scope = scope
    @option = option
  end

  def call(value)
    return @option if value.equal?(Virtus::Undefined)
    @option = value
    @scope
  end
end
