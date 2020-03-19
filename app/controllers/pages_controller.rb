class PagesController < ApplicationController
  def index
    @projects = Project.limit(5)
  end
end
