class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :description
      t.string :origin
      t.string :destination
      t.float :cost
      t.integer :containers_needed

      t.timestamps
    end
  end
end
