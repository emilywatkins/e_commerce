class Order < ApplicationRecord
  belongs_to :account
  has_many :orders_products
end
