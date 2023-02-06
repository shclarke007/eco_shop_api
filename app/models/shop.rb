class Shop < ApplicationRecord
  has_many :shop_addresses
  has_many :products
  
  validates :name, presence: true
end
