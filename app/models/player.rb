class Player < ActiveRecord::Base
  belongs_to :team
  has_many :injuries
  has_many :won_votes, class_name: 'MatchUpVote', foreign_key: 'chosen_player_id'
  has_many :lost_votes, class_name: 'MatchUpVote', foreign_key: 'unchosen_player_id'
end
