class Product < ActiveRecord::Base
    has_many :carts, dependent: :destroy
    validates :name, presence: true
    validates :product_type, presence: true
    validates :price, presence: true
    validates :detail, presence: true
    validates :filename, presence: true

end
