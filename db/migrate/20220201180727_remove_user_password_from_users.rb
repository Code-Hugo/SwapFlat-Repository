class RemoveUserPasswordFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :user_password, :string
  end
end
