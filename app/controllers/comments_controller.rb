class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, lyric_id: params[:lyric_id])
  end
end