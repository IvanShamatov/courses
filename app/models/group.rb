class Group < ActiveRecord::Base
  
  validates :max_users, :start_date, :end_date, :weekday, :start_time, :end_time, presence: true
  before_validation :freeslots, on: :create
  
  has_and_belongs_to_many :users
  belongs_to :course
  

  def freeslots
    self.max_users.to_i - self.users.count.to_i
  end
  
end
