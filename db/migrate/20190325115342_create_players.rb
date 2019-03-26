class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :hair_colour_id
      t.integer :eye_colour_id
      t.string :glasses
      t.string :facial_hair
      t.string :alive, default: :yes
      t.timestamps
    end
  end
end
