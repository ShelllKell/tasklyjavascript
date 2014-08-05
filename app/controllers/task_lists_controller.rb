class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @new_task = TaskList.create(:name => params[:task_list][:name])

    flash[:notice] = "Task List was created successfully!"
    redirect_to "/"
  end
end