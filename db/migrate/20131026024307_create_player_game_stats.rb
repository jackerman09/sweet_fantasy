class CreatePlayerGameStats < ActiveRecord::Migration
  def change
    create_table :player_game_stats do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :user_votes

      t.timestamps
    end
  end
end
