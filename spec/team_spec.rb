require './lib/player'
require './lib/team'

RSpec.describe Team do
  it "exists" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_an_instance_of(Team)
  end

  it "has a roster" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq ([])
  end

  it "has a player count" do 
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it "can add players to the roster" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it "can call the short term and long term players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
p team.short_term_players
    expect(team.long_term_players).to eq([player_1, player_3])
    expect(team.short_term_players).to eq([player_4, player_2])
  end


#     team.total_value
# #=> 85200000

# team.details
# #=> {"total_value" => 85200000, "player_count" => 4}
end