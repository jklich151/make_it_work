class ProjectController < ApplicationController

  def create
    Project.new(project_params)
  end

  private

    def project_params
      params.permit(:name, :material)
    end
end
