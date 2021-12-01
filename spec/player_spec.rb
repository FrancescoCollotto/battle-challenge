require "player"

describe Player do
  it "return the player name" do
    player = Player.new("Chris")
    expect(player.name).to eq "Chris"
  end
end