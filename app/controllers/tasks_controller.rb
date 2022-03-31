class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks
  def index
    set_tasks
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path
    else
      set_tasks
      render 'index'
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def set_tasks
      @tasks = Task.all.order(created_at: :desc)
    end

  
    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :completed)
    end
end
