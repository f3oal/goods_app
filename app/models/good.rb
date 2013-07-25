class Good < ActiveRecord::Base
  attr_accessible :name, :price

  validates :name, presence: true, uniqueness: true
  Valid_price = /\A(^[0-9]*[1-9]+[0-9]*\.[0-9]*$)|(^[0-9]*\.[0-9]*[1-9]+[0-9]*$)|(^[0-9]*[1-9]+[0-9]*$)\z/
  validates :price, presence: true, format: { with: Valid_price, messege: "Only positive numbers"}
end
