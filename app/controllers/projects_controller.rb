class ProjectsController < ApplicationController

  # GET /projects
  def index
    @projects = Project.unscoped.all
    render json: @projects
  end
end
