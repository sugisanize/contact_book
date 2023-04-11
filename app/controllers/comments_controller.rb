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

  def edit
    @contact = Contact.find_by(params[:id])
    @comment = Comment.find_by(params[:comment_id])
  end

  def update
    comment = Comment.find_by(params[:comment_id])
    if comment.update(comment_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    comment = Comment.find_by(params[:comment_id])
    return unless current_user.id == comment.user_id

    if comment.destroy
      redirect_to action: :index
    else
      render @contact
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:sleepingstarttime, :sleepingendtime, :defecationtime, :defecationquality_id, :mood_id, :lunchamount_id, :snackamount_id, :comment_text).merge(
      contact_id: params[:contact_id], user_id: current_user.id
    )
  end

  def redirect_root
    redirect_to root_path unless current_user.admin?
  end
end
