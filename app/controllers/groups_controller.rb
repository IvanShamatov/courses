class GroupsController < ApplicationController
  
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @course = Course.find(params[:course_id])
    @group = @course.groups.build
  end

  def edit
  end

  def create
    @course = Course.find(params[:course_id])
    @group = @course.groups.build(group_params)
    if @group.errors.empty?
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    @group.update_attributes(group_params)
    if @course.errors.empty?
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @group.destroy
    redirect_to course_groups_path
  end

  private
  
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:start_date, :end_date, :weekday, :start_time, :end_time, :max_users)
    end

end
