class ProjectsController < ApplicationController
  before_action :redirect_if_not_signed_in, only: [:new]

  def index; end

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
  def get_projects
    ProjectsForBranchService.new({
      search: params[:search],
      category: params[:category],
      branch: params[:action]
    }).call
  end
  def projects_for_branch
    respond_to do |format|
      format.html
      format.js { render partial: 'projects/projects_pagination_page' }
    end
  end

  
  private 
  
    def project_params
      params.require(:project).permit(:description, :title, :flatiron_module_id)
                              .merge(user_id: current_user.id)
    end
    def conversation_exist?
      Comment.between_users(current_user.id, @project.user.id).present?
    end
end
