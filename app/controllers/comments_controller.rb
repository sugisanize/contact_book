class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:sleepingstarttime, :sleepingendtime, :defecationtime, :defecationquality_id, :mood_id, :lunchamount_id, :snackamount_id, :comment_text).merge(
      user_id: current_user.id, contact_id: params[:contact_id]
    )
  end
end
