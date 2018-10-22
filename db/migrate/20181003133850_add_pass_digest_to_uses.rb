class AddPassDigestToUses < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :userusername, :string
    add_column :users, :password_digest, :string
    add_column :users, :username, :string
  end
end
