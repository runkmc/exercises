require '../lib/greeter'

RSpec.describe Greeter do
  it "greets the user" do
    greeter = Greeter.new(name: "Kevin")

    expect(greeter.reply).to eq "Hello, Kevin, nice to meet you!"
  end
end
