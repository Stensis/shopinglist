class ShoppingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
  has_one :user
  has_many :items
end
