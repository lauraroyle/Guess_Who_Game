class AddGuessWhoToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :guess_who, :integer
  end
end
