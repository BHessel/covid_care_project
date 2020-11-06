class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :recipient_name
      t.string :recipient_address
      t.string :recipient_message
      t.integer :user_id

      t.timestamps
    end
  end
end
