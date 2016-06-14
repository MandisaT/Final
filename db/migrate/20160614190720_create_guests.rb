class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :extra_guest
      t.string :dietary_needs

      t.timestamps null: false
    end
  end
end
