class TasksController < ApplicationController

  def index
    @tasks = Task.order(:task)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    if @task.save
      flash[:notice] = "Task was created successfully!"
      redirect_to "/"
    else
      render :new
    end
  end



end