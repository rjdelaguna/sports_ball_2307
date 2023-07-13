require './lib/player'
require './lib/team'

RSpec.describe Team do
  it "exists" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_an_instance_of(Team)
  end
end
# team.roster
# #=> []

# team.player_count
# #=> 0

# player_1 = Player.new("Michael Palledorous" , 1000000, 36)
# #=> #<Player:0x00007fa53b9ca0a8...>

# player_2 = Player.new("Kenny DeNunez", 500000, 24)
# #=> #<Player:0x00007fccd2985f48...>

# team.add_player(player_1)

# team.add_player(player_2)

# team.roster
# #=> [#<Player:0x00007fa53b9ca0a8...>, #<Player:0x00007fccd2985f48...>]

# team.player_count
# #=> 2