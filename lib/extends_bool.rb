require "extends_bool/version"

module ExtendsBool
  FALSE_VALUES = [nil, false, 0, 0.0, "", "0", "f", "F", "false", "FALSE", "off", "OFF", [], {}].to_set

  # Returns a boolean value, according the object value.
  #
  def to_bool
    !FALSE_VALUES.include?(self)
  end
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
