class CommentsController < ApplicationController
  before_action :redirect_root

  def index
    @contacts = Contact.all.order('contact_date DESC')
  end

  def new
    @contact = Contact.find_by(params[:id])
    @comment = Comment.new
  end

  def create
    @contact = Contact.find_by(params[:id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @contact
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:sleepingstarttime, :sleepingendtime, :defecationtime, :defecationquality_id, :mood_id, :lunchamount_id, :snackamount_id, :comment_text).merge(
      contact_id: params[:contact_id], admin_id: current_admin.id
    )
  end

  def redirect_root
    redirect_to root_path unless admin_signed_in?
  end
end
