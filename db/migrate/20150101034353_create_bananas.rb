class CreateBananas < ActiveRecord::Migration
  def change
    create_table :bananas do |t|
      t.integer :bowl_id, null: false
    end
    add_foreign_key :bananas, :bowls
  end
end
