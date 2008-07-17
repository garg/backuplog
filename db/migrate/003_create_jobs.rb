class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :computer_id
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
