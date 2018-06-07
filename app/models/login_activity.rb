class LoginActivity < ApplicationRecord
  belongs_to :user, polymorphic: true, optional: true

  scope :order_by_newest, -> { order('created_at DESC') }
end
