class CreateCartsItems < ActiveRecord::Migration
  def self_up
    create_table :carts_items, id: false do |t|
      t.references  :cart
      t.references  :item
    end

    add_index :carts_items, [:item_id, :cart_id]
    add_index :carts_items, [:item_id, :cart_id]
  end

  def self_down
    drop_table :carts_items
  end
end
