class TodosController < ApplicationController
    before_action :set_todo, only: [:update]

  # PUTCH /projects/1/todos/1
  def update
    @todo.update(:isCompleted => !@todo.isCompleted)
    render json: @todo
  end

  # POST /todos/
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todo, status: :created, location: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end
  
  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:text, :project_id)
    end
end