class AddOccupationToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :occupation, :string
  end
end
