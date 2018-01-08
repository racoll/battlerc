require "player"

describe Player do
  subject(:rob) { Player.new("rob") }

  describe "#name" do
    it "returns the name" do
      expect(rob.name).to eq "rob"
    end
  end
end
