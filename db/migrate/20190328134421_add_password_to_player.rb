class AddPasswordToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :password, :string
  end
end
