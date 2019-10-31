class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :botanical_name
      t.string :common_name
      t.string :neighbourhood
      t.float :diameter
      t.string :park
      t.string :location_class
      t.string :property_type
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
