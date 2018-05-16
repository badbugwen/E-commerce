class Product < ApplicationRecord
  has_many :cartitems, dependent: :destroy
  has_many :orderitems, dependent: :destroy
end
