class Cart < ActiveRecord::Base
  has_many :products, dependent: :destroy

  #validates :quantity, :presence => true, :uniqueness => true

  
  def check(product_id)
      @carts = Cart.all
      if @carts.exists?(product_id) == true
          puts "Found"
      else
          puts "Not Found"
      end
  end

  belongs_to :product
  belongs_to :user
end
