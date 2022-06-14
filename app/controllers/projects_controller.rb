class ProjectsController < ApplicationController
    def index
       @projects = Project.all
    end 

    def show
        @project = Project.find(params[:id])
      end

      def new
        @project = Project.new
      end

      def create
        @project = Project.new(params[:project])
        @project.save
        redirect_to project_path(@project)
      end

      def update
        @project = Project.find(params[:id])
        @project.update(params[:project])
        # Will raise ActiveModel::ForbiddenAttributesError
        redirect_to project_path(@project)
      end

      def destroy
        @project = Project.find(params[:id])
        @project.destroy
        # Will raise ActiveModel::ForbiddenAttributesError
        redirect_to projects_path
      end

      private

      def project_params
        params.require(:project).permit(:name, :description, :date)
      end
end
