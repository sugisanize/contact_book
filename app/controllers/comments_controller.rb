class CommentsController < ApplicationController
  def index
    @contacts = Contact.all.order('contact_date DESC')
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:sleepingstarttime, :sleepingendtime, :defecationtime, :defecationquality_id, :mood_id, :lunchamount_id, :snackamount_id, :comment_text).merge(
      contact_id: params[:contact_id]
    )
  end
end
