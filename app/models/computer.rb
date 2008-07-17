class Computer < ActiveRecord::Base
  belongs_to :job
  validates_presence_of :name
  validates_presence_of :description
#  validates_existence_of :job
end
