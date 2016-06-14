class CreateBagItems < ActiveRecord::Migration
  def change
    create_table :bag_items do |t|
      t.integer :bag_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
