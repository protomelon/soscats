class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.references :breed, null: false, foreign_key: true
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
