class TasksController < ApplicationController

  def new
    @task = Task.new
    @task_list = TaskList.find(params[:task_list_id])
  end

  def create
    @task = Task.new(allowed_parameters)
    @task_list = TaskList.find(params[:task_list_id])
    @task.task_list = @task_list

    # @due_date = params[:due_date]

    if @task.save
      flash[:notice] = "Task was created successfully!"
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/"
  end

private
  def allowed_parameters
    params.require(:task).permit(:task, :task_list_id, :due_date)
  end


end