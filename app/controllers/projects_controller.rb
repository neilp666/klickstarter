class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
     @projects = Project.all
     @displayed_projects = Project.take(4)
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def update
  end

  def create
    @project = current_user.projects.build(project_params)

    respond_to do |format|
    if @project.save
      format.html { redirect_to @project, notice: "Project was successfully updated!" }
      format.json { render :show, status: :ok, location: @project }
    else
      format.html { redirect_to :edit }
      format.json { render json: @project.errors, status: :unprocessable_entitiy }
    end
  end
end


def destroy
  @project.destroy
  respond_to do |format|
      format.html { redirect_to project_path, notice: "Project was successfully Destroyed!"}
      format.json { head :no_content }
  end
end

  def update
    respond_to do |format|
    if @project.update(project_params)
      format.html { redirect_to @project, notice: "Project was successfully updated!" }
      format.json { render :show, status: :ok, location: @project }
    else
      format.html { redirect_to :edit }
      format.json { render json: @project.errors, status: :unprocessable_entitiy }
    end
  end
end
  private 

  def set_project
      @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :short_description, :description, :goal, :image_url, :expiration_date)
  end

end
