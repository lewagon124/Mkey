class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :carts, dependent: :destroy
  has_many :recipes
  has_many :relationships
  has_many :comments
  has_many :order

  after_create :empty_cart

  def empty_cart
    Cart.create(user: self, status: false)
  end
  def current_cart
    Cart.find_by(user: self, status: false)
  end
end
