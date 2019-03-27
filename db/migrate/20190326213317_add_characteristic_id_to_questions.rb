class AddCharacteristicIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :characteristic_id, :integer
  end
end
