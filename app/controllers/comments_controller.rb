class CommentsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @comment = Comment.new(comment_params)
    @comment.list_id = @list.id
    @comments = @list.comments.order(created_at: 'DESC').page(params[:page]).per(5)
    @comment.save
  end

  def destroy
    @list = List.find(params[:list_id])
    Comment.find(params[:id]).destroy
    @comments = @list.comments.order(created_at: 'DESC').page(params[:page]).per(5)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :name)
  end
end
