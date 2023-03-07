class ShoppingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_by, :created_at, :updated_at
  has_one :user
end
