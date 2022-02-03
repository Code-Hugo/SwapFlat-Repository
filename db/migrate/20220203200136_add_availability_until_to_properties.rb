class AddAvailabilityUntilToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :availability_until, :string
  end
end
