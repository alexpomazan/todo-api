class TodosController < ApplicationController
    before_action :set_todo, only: [:update]

  # PUTCH /projects/1/todos/1
  def update
    @todo.update(:isCompleted => !@todo.isCompleted)
    render json: @todo
  end

  # POST /todos/
  def create
		@project = Project.find_or_create_by!(title: params[:title]) 
		@project.todos.create(text: params[:todo][:text])
		render json: @project.to_json(methods: :todos)
	end
  
  private
    def set_todo
      @todo = Todo.find(params[:id])
    end
end