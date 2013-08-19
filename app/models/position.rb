class Position < ActiveRecord::Base
  attr_accessible :cart, :cart_id, :item, :item_id, :quantity
  belongs_to  :item
  belongs_to  :cart
end
