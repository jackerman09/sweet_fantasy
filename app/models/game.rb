class Game < ActiveRecord::Base
  belongs_to :home_team,    class_name: 'Team'
  belongs_to :away_team,    class_name: 'Team'
  has_many :player_game_stats
  # comment
end
