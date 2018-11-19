require "bundler/setup"
require "extends_bool"

RSpec.describe ToBoolean do
  it "has a version number" do
    expect(ExtendsBool::VERSION).not_to be nil
  end

  it "return bool value according the object value" do
    # Check for true values
    expect(true.to_bool).to eq(true)
    expect(1.to_bool).to eq(true)
    expect(1.0.to_bool).to eq(true)
    expect(0.1.to_bool).to eq(true)
    expect(1.5.to_bool).to eq(true)
    expect(2.0.to_bool).to eq(true)
    expect("1".to_bool).to eq(true)
    expect("t".to_bool).to eq(true)
    expect("T".to_bool).to eq(true)
    expect("true".to_bool).to eq(true)
    expect("TRUE".to_bool).to eq(true)
    expect("on".to_bool).to eq(true)
    expect("ON".to_bool).to eq(true)
    expect(" ".to_bool).to eq(true)
    expect("\u3000\r\n".to_bool).to eq(true)
    expect("\u0000".to_bool).to eq(true)
    expect("SOMETHING RANDOM".to_bool).to eq(true)

    # Check for false values
    expect("".to_bool).to eq(false)
    expect(nil.to_bool).to eq(false)
    expect(false.to_bool).to eq(false)
    expect(0.to_bool).to eq(false)
    expect(0.0.to_bool).to eq(false)
    expect("0".to_bool).to eq(false)
    expect("f".to_bool).to eq(false)
    expect("F".to_bool).to eq(false)
    expect("false".to_bool).to eq(false)
    expect("FALSE".to_bool).to eq(false)
    expect("off".to_bool).to eq(false)
    expect("OFF".to_bool).to eq(false)
    expect([].to_bool).to eq(false)
    expect({}.to_bool).to eq(false)
  end
end
