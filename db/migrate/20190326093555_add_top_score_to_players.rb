class AddTopScoreToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :top_score, :integer
  end
end
