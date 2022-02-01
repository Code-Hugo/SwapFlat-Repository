class RemoveUserEmailFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :user_email, :string
  end
end
