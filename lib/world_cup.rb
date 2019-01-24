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

end

# For the `active_players_by_position` method,
# an active player is a player that is on a team
# that is not eliminated.
