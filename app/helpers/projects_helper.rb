module ProjectsHelper
  def project_format_partial_path
    current_page?(root_path) ? 'projects/project/home_page' : 'projects/project/branch_page'
  end
end
