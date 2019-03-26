class CreateHairColours < ActiveRecord::Migration[5.1]
  def change
    create_table :hair_colours do |t|
      t.string :colour

      t.timestamps
    end
  end
end
