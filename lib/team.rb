class Team
  attr_reader :roster

  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end
end