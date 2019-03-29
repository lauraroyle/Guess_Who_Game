class AddPasswordDigestToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :password_digest, :string, default: "1"
  end
end
