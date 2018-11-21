require "extends_bool/version"

module ExtendsBool
  FALSE_VALUES = [nil, false, 0, 0.0, "", "0", "f", "false", "off", [], {}]

  # Returns a boolean value, according the object value.
  #
  def to_bool
    value = self
    value.downcase! if value.is_a?(String)
    !FALSE_VALUES.include?(self)
  end

  alias_method :to_b, :to_bool
  alias_method :to_boolean, :to_bool
end

# Add the to_bool behaviour to all the follow classes:
#
class String; include ExtendsBool; end
class Integer; include ExtendsBool; end
class Float; include ExtendsBool; end
class Array; include ExtendsBool; end
class Hash; include ExtendsBool; end
class TrueClass; include ExtendsBool; end
class FalseClass; include ExtendsBool; end
class NilClass; include ExtendsBool; end
