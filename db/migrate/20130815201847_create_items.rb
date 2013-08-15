class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.text    :description
      t.float   :price
      t.float   :weight
      t.timestamps
    end
  end
end
