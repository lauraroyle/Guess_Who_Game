class AddGenderToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :gender, :string
  end
end
