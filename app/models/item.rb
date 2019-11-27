class Item < ApplicationRecord
  has_many :line_items, dependent: :nullify
  validates :title, presence: true,
           length: {minimum: 2}
  validates :description, presence: true,
           length: {maximum: 500}
  validates :price, presence: true
  validates :image_url, presence: true
end
