class TasksController < ApplicationController

def index
    @tasks = Task.all   #where(user_id: current_user)
    @children = Child.all
end

def new
    @task = Task.new
    @task.children.build
end

def create
    @task = Task.new(task_params)
  if @task.save
      flash[:notice] = 'taskが登録されました'
      redirect_to root_path
  else
      flash.now[:error] = @task.errors.full_messages.first
      render :new
  end

end

def update

end

  private
  def task_params
     params.require(:task).permit(:description, :due_date)
  end


end
