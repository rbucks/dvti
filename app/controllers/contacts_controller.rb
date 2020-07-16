class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      redirect_to new_contact_path, notice: "Your message has been sent! We'll get back to you shortly."
    else
      redirect_to root_path, notice: 'Sorry, there was a problem.'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :phone, :name, :message, :topic)
  end
end
