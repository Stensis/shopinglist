class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :contact, :created_at
  has_many :shopping_list
end
