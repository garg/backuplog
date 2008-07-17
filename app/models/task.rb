class Task < ActiveRecord::Base
  belongs_to :job
  validates_presence_of :name
  validates_presence_of :description
  
  before_destroy {|record| Job.update_all "task_id = 'nil'", "task_id = #{record.id}"}
  
 # def do_children_exist? 
 #   jobs = Job.find_all_by_task_id(self.id)
 #   if !jobs.empty?
 #     return true
 #   else
 #     return false
            
 #   end
 # end
end
