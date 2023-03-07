class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :shopping_list, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :quantity
      t.string :category
      t.integer :price
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
