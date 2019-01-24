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

end
