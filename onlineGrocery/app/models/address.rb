class Address < ActiveRecord::Base
    validates :line_1_building, presence: true
    validates :line_2_street, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
    validates :country, presence: true
  belongs_to :user
end
