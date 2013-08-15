class CreateVirtualItems < ActiveRecord::Migration
  def change
    create_table :virtual_items do |t|

      t.timestamps
    end
  end
end
