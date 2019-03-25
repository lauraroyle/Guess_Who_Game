class CreatePlayersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :players_tables do |t|
      t.string :name
      t.string :username
    end
  end
end
