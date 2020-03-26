class ProjectsForBranchService
  def initialize(params)
    @search = params[:search]
    @flatiron_module = params[:flatiron_module]
    @branch = params[:branch]
  end

  def call
    if @flatiron_module.blank? && @search.blank?
      projects = Project.by_branch(@branch).all
    elsif @flatiron_module.blank? && @search.present?
      projects = Project.by_branch(@branch).search(@search)
    end
  end
end
