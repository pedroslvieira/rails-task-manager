class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :completed]
  skip_before_action :verify_authenticity_token

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def completed
    @task.completed == false ? @task.completed = true : @task.completed = false
    @task.save
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
