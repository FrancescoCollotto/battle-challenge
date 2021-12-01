class Player

  attr_reader :name, :my_hitpoints

  def initialize(name)
    @name = name
    @my_hitpoints = 60
  end

  def take_damage
    @my_hitpoints -= 10
  end

end