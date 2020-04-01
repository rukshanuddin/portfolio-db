# Comments Controller
class CommentsController < ApplicationController
  before_action :get_project, only: [:new, :index]

  def create
    @comment = Comment.new(comment_params)
    @comment.project_id = params[:project_id]
    @comment.save
    redirect_to project_path(@comment.project)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

  def new
    @comment = Comment.new
  end

  def index
    render 'show'
  end

  private

  def get_project
    @project = Project.find_by_id(params[:project_id])
  end
end
