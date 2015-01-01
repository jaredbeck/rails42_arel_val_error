class CreateBowls < ActiveRecord::Migration
  def change
    create_table :bowls do |t|
      t.integer :kitchen_id, null: false
      t.boolean :active, null: false
    end
    add_foreign_key :bowls, :kitchens
  end
end
