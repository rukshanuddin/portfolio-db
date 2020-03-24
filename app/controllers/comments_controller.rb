# Comments Controller
class CommentsController < ApplicationController
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
    @project = Project.find_by_id(params[:project_id])
    @comment = Comment.new
  end

  def index
    @project = Project.find_by_id(params[:project_id])
    render 'show'
  end
end
