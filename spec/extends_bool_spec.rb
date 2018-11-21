require "bundler/setup"
require "extends_bool"

RSpec.describe ExtendsBool do
  it "has a version number" do
    expect(ExtendsBool::VERSION).not_to be nil
  end

  def truthy_values
    [true, 1, 1.0, 0.1, 1.5, 2.0, "1", "t", "T", "true", "TRUE", "on", "ON", " ", "\u3000\r\n", "\u0000", "RANDOM"]
  end

  def falsey_values
    ["", nil, false, 0, 0.0, "0", "f", "F", "false", "FALSE", "fAlSe", "off", "oFf", "OFF", [], {}]
  end

  it "return bool value according the object value" do
    [:to_bool, :to_b, :to_boolean].each do |method|
      truthy_values.each { |v| expect(v.send(method)).to eq(true) }
      falsey_values.each { |v| expect(v.send(method)).to eq(false) }
    end
  end
end
