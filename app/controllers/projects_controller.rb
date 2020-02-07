class ProjectsController < ApplicationController

  def create
    Project.new(project_params)
  end

  def show
    @projects = Project.new(params[:id])
  end

  private

    def project_params
      params.permit(:name, :material)
    end
end
