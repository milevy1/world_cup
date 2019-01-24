require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

  def test_team_has_a_country
    team = Team.new("France")

    assert_equal "France", team.country
  end

end
