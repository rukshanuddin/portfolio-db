class ProjectsForBranchService
  def initialize(params)
    @search = params[:search]
    @flatiron_module = params[:flatiron_module]
    @branch = params[:branch]
  end

  # get posts depending on the request
  def call
    if @flatiron_module.blank? && @search.blank?
      projects = Post.by_branch(@branch).all
    elsif @flatiron_module.blank? && @search.present?
      projects = Post.by_branch(@branch).search(@search)
    elsif @flatiron_module.present? && @search.blank?
      projects = Post.by_category(@branch, @flatiron_module)
    elsif @flatiron_module.present? && @search.present?
      projects = Post.by_category(@branch, @flatiron_module).search(@search)
    else
    end
  end

end