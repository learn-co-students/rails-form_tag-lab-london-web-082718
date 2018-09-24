class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    #  id for these params needs to be "first_name" and "last_name" - check on browser, inspect
    # element to see what the id is - good tip - Ed showed

    redirect_to @student  # Rails knows we are trying to redirect_to the student instance we just created
  end


end
