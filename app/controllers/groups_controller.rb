class GroupsController < ApplicationController
  before_action :set_course
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = @course.groups.all
  end

  def show
  end

  def new
    @group = @course.groups.new
  end

  def edit
  end

  def create
    @group = @course.groups.create(group_params)
    if @group.errors.empty?
      redirect_to course_groups_path
    else
      render 'new'
    end
  end

  def update
    @group.update_attributes(group_params)
    if @course.errors.empty?
      redirect_to course_groups_path
    else
      render 'edit'
    end
  end

  def destroy
    @group.destroy
    redirect_to course_groups_path
  end

  private
    
    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:start_date, :end_date, :weekday, :start_time, :end_time)
    end
end
