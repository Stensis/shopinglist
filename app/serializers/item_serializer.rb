class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :category, :price, :created_at, :updated_at
  belongs_to :shopping_list
end
