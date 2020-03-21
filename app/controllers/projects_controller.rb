class ProjectsController < ApplicationController
  before_action :redirect_if_not_signed_in, only: [:new]

  def show
    @project = Project.find(params[:id])
    if user_signed_in?
      @message_has_been_sent = conversation_exist?
    end
  end

  def new
    @branch = params[:branch]
    @flatiron_modules = FlatironModule.where(branch: @branch)
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
    projects_for_branch(params[:action])
  end

  def sinatra
    projects_for_branch(params[:action])
  end

  def ruby
    projects_for_branch(params[:action])
  end

  def javascript
    projects_for_branch(params[:action])
  end

  def react
    projects_for_branch(params[:action])
  end
  private

  def conversation_exist?
    false
  end

  def project_params
    params.require(:project).permit(:description, :title, :flatiron_module_id)
                         .merge(user_id: current_user.id)
  end

  def projects_for_branch(branch)
    @flatiron_modules = FlatironModule.where(branch: branch)
    @projects = get_projects.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.js { render partial: 'projects/projects_pagination_page' }
    end
  end

  def get_projects
    ProjectsForBranchService.new({
      search: params[:search],
      flatiron_module: params[:flatiron_module],
      branch: params[:action]
    }).call
  end

end