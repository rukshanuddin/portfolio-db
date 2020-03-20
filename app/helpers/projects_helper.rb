module ProjectsHelper
  def create_new_project_partial_path
    if user_signed_in?
      'projects/branch/create_new_project/signed_in'
    else
      'projects/branch/create_new_project/not_signed_in'
    end
  end

  def all_flatiron_modules_button_partial_path
    if params[:flatiron_module].blank?
      'projects/branch/flatiron_modules/all_selected'
    else
      'projects/branch/flatiron_modules/all_not_selected'
    end
  end

  def no_projects_partial_path(projects)
    projects.empty? ? 'projects/shared/no_projects' : 'shared/empty_partial'
  end

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

  def contact_user_partial_path
    if user_signed_in?
      @project.user.id != current_user.id ? 'projects/show/contact_user' : 'shared/empty_partial'
    else 
      'projects/show/login_required'
    end
  end

  def leave_message_partial_path
    if @message_has_been_sent
      'projects/show/contact_user/already_in_touch'
    else
      'projects/show/contact_user/message_form'
    end
  end
end
