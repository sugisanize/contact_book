class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @contacts = Contact.all
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

  private

  def contact_params
    params.require(:contact).permit(:date, :temperature, :bedtime, :wakeuptime, :defecationtimezone_id, :defecationquality_id,
                                    :bathing_id, :mood_id, :dinnertime, :dinner_content, :breakfasttime, :breakfast_content, :picuptime, :contact).merge(user_id: current_user.id)
  end
end
