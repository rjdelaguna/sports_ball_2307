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

  def long_term_players
    roster = @roster.sort_by {|player| player.contract_length}
    roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    roster = @roster.sort_by {|player| player.contract_length}
    roster.find_all do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    cost = 
    @roster.map do |player|
      player.total_cost
    end
    cost.sum
  end

  def details
    { "total_value" => total_value, "player_count" => player_count}
  end
end