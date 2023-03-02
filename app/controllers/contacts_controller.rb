class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @contacts = Contact.all.includes(:user).order('contact_date DESC')
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @contact = Contact.find(params[:id])
    if current_user.id != @contact.user_id
      redirect_to root_path
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    if current_user.id != @contact.user_id
      redirect_to root_path
    end
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update(contact_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    return unless current_user.id == contact.user_id

    if contact.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:contact_date, :temperature, :bedtime, :wakeuptime, :defecationtimezone_id, :defecationquality_id,
                                    :bathing_id, :mood_id, :dinnertime, :dinner_content, :breakfasttime, :breakfast_content, :picuptime, :contact).merge(user_id: current_user.id)
  end
end
