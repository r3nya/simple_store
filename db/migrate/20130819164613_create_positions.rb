class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references  :cart
      t.references  :item
      t.integer     :quantity, default: 1
      t.timestamps
    end
    
    add_index   :positions, [:item_id, :cart_id]
    add_index   :positions, [:cart_id, :item_id]
    
  end
end
