class AddItem2TypeToItems < ActiveRecord::Migration
  def change
    add_column :items, :item2_type, :string
  end
end
