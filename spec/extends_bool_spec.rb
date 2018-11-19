RSpec.describe ExtendsBool do
  it "has a version number" do
    expect(ExtendsBool::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
