class AddCollumnsToCottages < ActiveRecord::Migration[6.0]
  def change
    add_column :cottages, :name, :string
    add_column :cottages, :capacity, :integer
    add_column :cottages, :bedrooms, :integer
    add_column :cottages, :beds, :integer
    add_column :cottages, :bathrooms, :integer
    add_column :cottages, :address, :string
    add_column :cottages, :latitude, :float
    add_column :cottages, :longitude, :float
  end
end
