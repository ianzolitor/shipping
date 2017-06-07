class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.integer :job_id
      t.integer :boat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
