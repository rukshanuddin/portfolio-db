# Controller for all Project views
class ProjectsController < ApplicationController
  before_action :redirect_if_not_signed_in, only: [:new]
  before_action only: [:rails, :ruby, :react, :sinatra, :personal, :javascript] do
    projects_for_branch(params[:action])
  end

  def show
    @comment = Comment.new
    @project = Project.find(params[:id])
    @flatiron_module = @project.flatiron_module
    @comment.project_id = @project.id
  end

  def index
    @projects = Project.alphabetize
    render 'projects'
  end

  def new
    @branch = params[:branch]
    if @branch
      @flatiron_modules = FlatironModule.where(branch: @branch)
    else
      @flatiron_modules = FlatironModule.all.uniq
    end
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      redirect_to root_path
    end
  end

  def rails
  end

  def sinatra
  end

  def ruby
  end

  def javascript
  end

  def react
  end

  def personal
  end

  private

  def conversation_exist?
    false
  end

  def project_params
    params.require(:project)
          .permit(:description, :title, :flatiron_module_id, :github, :youtube)
          .merge(user_id: current_user.id)
  end

  def projects_for_branch(branch)
    @flatiron_modules = FlatironModule.where(branch: branch)
    @projects = retrieve_projects.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.js { render partial: 'projects/projects_pagination_page' }
    end
  end

  def retrieve_projects
    ProjectsForBranchService.new(
      { search: params[:search],
        flatiron_module: params[:flatiron_module],
        branch: params[:action] }
    ).call
  end
end
