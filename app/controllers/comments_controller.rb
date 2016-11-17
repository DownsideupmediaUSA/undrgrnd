class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.song
  end

  def index
    @comments = Comment.all
  end



  private

  def comment_params
    params.require(:comment).permit(:content, :song_id, :username, :user_id, user_attributes:[:username])
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
