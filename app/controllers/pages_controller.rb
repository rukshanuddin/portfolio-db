# Root page controller
class PagesController < ApplicationController
  def index
    @ruby_projects = Project.by_branch('ruby').limit(8)
    @sinatra_projects = Project.by_branch('sinatra').limit(8)
    @rails_projects = Project.by_branch('rails').limit(8)
    @javascript_projects = Project.by_branch('javascript').limit(8)
    @react_projects = Project.by_branch('react').limit(8)
    @personal_projects = Project.by_branch('personal').limit(8)
  end
end
