require "player"

describe Player do
  subject(:rob) { Player.new("rob") }
  subject(:rory) { Player.new("rory") }

  describe "#name" do
    it "returns the name" do
      expect(rob.name).to eq "rob"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(rob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(rory).to receive(:receive_damage)
      rob.attack(rory)
    end
  end

  describe "#receive_damage" do
    it "reduces the player hit points" do
      expect { rob.receive_damage }.to change { rob.hit_points }.by(-10)
    end
  end

end
