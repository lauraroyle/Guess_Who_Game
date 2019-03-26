class CreateEyeColours < ActiveRecord::Migration[5.1]
  def change
    create_table :eye_colours do |t|
      t.string :colour

      t.timestamps
    end
  end
end
