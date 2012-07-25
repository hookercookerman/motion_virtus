class Array

  # so we can pass specs and move on
  def to_set
    self.uniq!
  end
end

class Object
  def singleton_class
    class << self; self; end
  end
end

module Virtus
  # Represents an undefined parameter used by auto-generated option methods
  Undefined = Object.new.freeze
end

