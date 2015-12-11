class Cart < ActiveRecord::Base
  has_many :products, dependent: :destroy

  belongs_to :product
  belongs_to :user
end
