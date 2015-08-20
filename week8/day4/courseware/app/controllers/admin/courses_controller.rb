class Admin::CoursesController < ApplicationController

  before_action :authenticate_user!
  before_action :load_courses
  before_action :authorized, :only => [:show, :edit, :update, :destroy]

  def index
  end

  def update

  end

  def edit

  end

  def show

  end

  def destroy

  end


  private

  def authorized
    @course = Course.find(params[:id])
    unless current_user.role == "admin" || @course.author_id == current_user.id
      redirect_to admin_courses_path
    end
  end

  def load_courses
    if current_user.role == "author"
      @courses = current_user.courses
    elsif current_user.role == "admin"
      @courses = Course.all
    end
  end

end
