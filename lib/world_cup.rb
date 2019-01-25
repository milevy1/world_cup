class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    # Select players where position == position && team == active
    players_array = []
    @teams.each { |team|
      if !team.eliminated
        team.players_by_position(position).each{ |player|
          players_array << player
        }
      end
    }
    return players_array
  end

  def all_players_by_position
    players_hash = {}
    positions_array = []
    @teams.each{ |team|
      team.players.each { |player|
        if players_hash[player.position].nil?
          players_hash[player.position] = []
        end
        players_hash[player.position] << player
      }
    }
    return players_hash
  end

end
