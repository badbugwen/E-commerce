class Product < ApplicationRecord
  mount_uploader :image, ProductImageUploader
  validates_presence_of :name, :description, :price

  has_many :cartitems, dependent: :destroy
  has_many :orderitems, dependent: :destroy
end
