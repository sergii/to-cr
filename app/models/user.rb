class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :lockable

  def self.from_omniauth(auth)
    email = auth['info']['email']
    user = User.where(email: email).first

    unless user
      user = User.create(email: email, password: Devise.friendly_token[0,20])
    end

    user
  end
end
