class Job < ActiveRecord::Base
  belongs_to :user
  has_one :task
  has_one :computer
  
  validates_presence_of :user_id
  validates_presence_of :task_id
  validates_presence_of :computer_id
  
  def date_range(from,to)
    find(:all, :conditions => {:created_at => 'from'..'to'})
  end
  
  
end
