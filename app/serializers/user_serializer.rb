class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :contact, :created_at
end
