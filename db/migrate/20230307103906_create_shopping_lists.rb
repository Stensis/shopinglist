class CreateShoppingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :created_by
      t.date :date_created
      t.date :date_updated

      t.timestamps
    end
  end
end
