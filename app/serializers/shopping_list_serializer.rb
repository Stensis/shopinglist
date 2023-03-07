class ShoppingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id, :created_at, :updated_at
  has_one :user
end
