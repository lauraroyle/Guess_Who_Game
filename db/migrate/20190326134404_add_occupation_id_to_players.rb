class AddOccupationIdToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :occupation_id, :integer
  end
end
