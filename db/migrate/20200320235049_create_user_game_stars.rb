class CreateUserGameStars < ActiveRecord::Migration[6.0]
  def change
    create_table :user_game_stars do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
