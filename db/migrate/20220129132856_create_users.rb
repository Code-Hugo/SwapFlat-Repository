class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_password
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
