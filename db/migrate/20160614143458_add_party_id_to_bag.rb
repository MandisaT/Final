class AddPartyIdToBag < ActiveRecord::Migration
  def change
    add_column :bags, :party_id, :integer
  end
end
