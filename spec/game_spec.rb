require 'game'
require 'player'

describe Game do

  it "Can let a player attack player" do
    player = double()
    allow(player).to receive(:take_damage).and_return(50)
    expect(subject.attack(player)).to eq 50
  end

end