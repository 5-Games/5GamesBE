class CreatePlaylistGames < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_games do |t|
      t.belongs_to :game, null: false, foreign_key: true
      t.belongs_to :playlist, null: false, foreign_key: true
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
