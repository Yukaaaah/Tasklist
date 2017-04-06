class ChildrenController < ApplicationController

    def index
        @children = Child.all
    end

    def new
        @child = Child.new
    end

    def create
        @child = Child.new(child_params)
      if @child.save
          redirect_to root_path
      else
          flash.now[:error] = @child.errors.full_messages.first
          render :new
      end

    end

    def update
        
    end

      private
      def child_params
         params.require(:child).permit(:description, :due_date)
      end

end
