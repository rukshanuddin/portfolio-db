class ProjectsController < ApplicationController
  def index; end

  def show
    @project = Project.find(params[:id])
  end
  def get_projects
    branch = params[:action]
    search = params[:search]
    flatiron_module = params[:flatiron_module]

    if flatiron_module.blank? && search.blank?
        projects = Project.by_branch(branch).all
      elsif flatiron_module.blank? && search.present?
        projects = Project.by_branch(branch).search(search)
      elsif flatiron_module.present? && search.blank?
        projects = Project.by_flatiron_module(branch, flatiron_module)
      elsif flatiron_module.present? && search.present?
        projects = Project.by_flatiron_module(branch, flatiron_module).search(search)
      else
    end
  end
  def projects_for_branch
    respond_to do |format|
      format.html
      format.js { render partial: 'projects/projects_pagination_page' }
    end
  end
end
