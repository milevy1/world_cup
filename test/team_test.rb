require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

  def test_team_has_a_country
    team = Team.new("France")

    assert_equal "France", team.country
  end

  def test_eliminatied_starts_as_false
    team = Team.new("France")

    refute team.eliminated?
  end

  def test_eliminated_can_be_set_to_true
    team = Team.new("France")
    team.eliminated = true

    assert team.eliminated?
  end

  def test_team_players_starts_as_empty_array
    team = Team.new("France")

    assert_equal [], team.players
  end

  def test_adding_players_to_team
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)

    assert_equal [mbappe, pogba], team.players
  end

end
