class AddAvailabilityFromToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :availability_from, :string
  end
end
