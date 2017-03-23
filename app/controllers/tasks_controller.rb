class TasksController < ApplicationController

def index
    @tasks = Task.all
    @children = Child.all
end

end
