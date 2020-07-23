class CreateCottages < ActiveRecord::Migration[6.0]
  def change
    create_table :cottages do |t|

      t.timestamps
    end
  end
end
