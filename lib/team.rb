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
    # @roster.sum. do |player|
    # player.total_cost
    # end
    cost = 
    @roster.map do |player|
      player.total_cost
    end
    cost.sum
  end

  def details
    { "total_value" => total_value, "player_count" => player_count}
  end

  def average_cost_of_player
   average = total_value / player_count
   group_1 = average.to_s.chars.to_a.reverse.each_slice(3).map{|x| x.join}
   group_2 = group_1.join(",").reverse
   "$#{group_2}"
  end

  def players_by_last_name
    players =
    @roster.map do |player|
      player.last_name
    end
    players.sort.join(", ")
  end

end