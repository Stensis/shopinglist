class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :quantity, :category, :price, :created_at, :updated_at
  has_one :shopping_list
end
