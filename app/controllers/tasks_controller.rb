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
      @tasks = Task.all.order(due_date: :asc)
      @overdue_tasks = @tasks.where('due_date < ?', Date.today)
      @todays_tasks = @tasks.where('due_date = ?', Date.today)
      @tomorrows_tasks = @tasks.where('due_date = ?', Date.tomorrow)
      @later_tasks = @tasks.where('due_date > ?', Date.tomorrow)
    end

  
    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :completed, :due_date)
    end
end
