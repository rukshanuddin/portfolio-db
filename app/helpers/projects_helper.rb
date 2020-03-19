module ProjectsHelper
  def project_format_partial_path
    current_page?(root_path) ? 'projects/project/home_page' : 'projects/project/branch_page'
  end
  def flatiron_module_field_partial_path
    if params[:flatiron_module].present?
      'projects/branch/search_form/flatiron_module_field'
    else
      'shared/empty_partial'
    end
  end
  def update_pagination_partial_path
    if @projects.next_page
      'projects/projects_pagination_page/update_pagination'
    else
      'projects/projects_pagination_page/remove_pagination'
    end
  end
  def no_projects_partial_path(projects)
    projects.empty? ? 'projects/shared/no_projects' : 'shared/empty_partial'
  end
end
