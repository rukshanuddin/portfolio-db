class ProjectsController < ApplicationController
    def index
      @projects = Project.limit(5)
    end
end
