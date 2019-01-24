require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_player_name_returns_name
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    assert_equal "Luka Modric", player.name
  end

  def test_player_position_returns_position
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    assert_equal "midfielder", player.position
  end

end
