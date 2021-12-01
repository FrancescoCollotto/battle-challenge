require "player"

describe Player do

  let (:player) {Player.new("Chris")}

  it "return the player name" do
    expect(player.name).to eq "Chris"
  end

  it "Can return it's current hitpoints" do
    expect(player.my_hitpoints).to eq 60
  end

  it "Can damage the player" do
    expect(player).to respond_to(:take_damage)
  end

  it "Reduces the hitpoints" do
    expect{player.take_damage}.to change{player.my_hitpoints}.by(-10)
  end
end