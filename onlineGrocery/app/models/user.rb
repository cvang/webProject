class User < ActiveRecord::Base
    has_many :addresses, dependent: :destroy
    has_many :credit_cards, dependent: :destroy
    has_many :user_addresses, dependent: :destroy
    accepts_nested_attributes_for :addresses, reject_if: lambda { |attributes| attributes['line_1_building'].blank? || attributes['line_2_street'].blank? || attributes['city'].blank? || attributes['state'].blank? || attributes['country'].blank?}
    accepts_nested_attributes_for :credit_cards, reject_if: lambda { |attributes| attributes['card_numbers'].blank? || attributes['expire'].blank? || attributes['cvs'].blank?}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :last_name, presence: true
  belongs_to :product
end
