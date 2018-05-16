class Order < ApplicationRecord
  has_many :orderitems, dependent: :destroy
  has_many :payments
end
