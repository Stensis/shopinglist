class ShoppingList < ApplicationRecord
  belongs_to :user
  has_many :items

  before_save :set_user

  private

  def set_user
    self.user = User.current # assuming you have a User model and a `current` method that returns the current user
  end

end
