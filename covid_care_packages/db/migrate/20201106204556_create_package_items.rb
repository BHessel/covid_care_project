class CreatePackageItems < ActiveRecord::Migration[6.0]
  def change
    create_table :package_items do |t|
      t.integer :item_id
      t.integer :package_id

      t.timestamps
    end
  end
end
