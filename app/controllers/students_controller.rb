class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to root_path
  end
end
