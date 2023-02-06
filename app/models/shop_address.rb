class ShopAddress < ApplicationRecord
  belongs_to :shop
  
  validates :street_name, :post_code, presence: true
end
