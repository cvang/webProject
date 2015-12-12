class CreditCard < ActiveRecord::Base
    validates :card_numbers, presence: true
    validates :expire, presence: true
    validates :cvs, presence: true
  belongs_to :user
end
