class CreateCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :characteristics do |t|
      t.string :type
      t.string :value
      t.timestamps
    end
  end
end
