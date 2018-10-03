class AddUserIdToArticled < ActiveRecord::Migration[5.1]
  def change
    add_colum :articles, :user_id, :integer
  end
end
