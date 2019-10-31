class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :description
      t.string :temperament
      t.string :origin
      t.integer :stranger_friendly

      t.timestamps
    end
  end
end
