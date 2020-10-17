class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    ActionCable.server.broadcast 'comment_channel', content: comment if comment.save
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      redirect_to root_path
    else
      render :show
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, fashion_id: params[:fashion_id],user_nickname: current_user.nickname)
  end
end
