class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :container_amount
      t.integer :user_id

      t.timestamps
    end
  end
end
