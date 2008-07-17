class AddNotesTableToJobs < ActiveRecord::Migration
  def self.up
    add_column :jobs, :notes, :text
  end

  def self.down
    remove_column :jobs, :notes
  end
end
