class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.boolean :active, null: false
    end
  end
end
