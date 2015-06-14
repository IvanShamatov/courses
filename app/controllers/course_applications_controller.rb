class CourseApplicationsController < ApplicationController
  
  def index
    @applications = CourseApplication.all
  end
  
  def new 
  end
  
  def create
    @application = 
  end
  
  
end
