class ProjectsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @title = "Portfolio"
    @projects = Project.all
    @categories = Category.all
  end

  def show
    @project = Project.find(params[:id])
  end
end
