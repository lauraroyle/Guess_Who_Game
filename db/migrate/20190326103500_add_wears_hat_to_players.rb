class AddWearsHatToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :wears_hat, :string
  end
end
