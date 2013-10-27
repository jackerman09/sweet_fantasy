class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :team_id
      t.attachment :image
      t.boolean :injured

      t.timestamps
    end
    add_index :players, [:position, :team_id]
  end
end
