class Item < ActiveRecord::Base
  
  validates :price, :weight, numericality: { greater_than: 0 }, presence: true
  has_and_belongs_to_many :carts
  has_many  :positions
  has_many  :carts, through: :positions
  has_many  :item, as: :imageable
  
  # Just for lulz  & skills :tf:
  scope :cheapest,  where('price < ?', 100)
  scope :newest,    -> { where("created_at > ?", 1.day.ago) }
  
end
