class CreatePlayerCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :player_characteristics do |t|
      t.integer :player_id
      t.integer :characteristic_id

      t.timestamps
    end
  end
end
