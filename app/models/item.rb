class Item < ActiveRecord::Base
  validates :price, :weight, numericality: { greater_than: 0 }, presence: true
end
