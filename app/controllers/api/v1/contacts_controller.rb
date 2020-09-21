class Api::V1::ContactsController < ApplicationController

  def index
    contacts = Contact.all
    render json: contacts
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      render json: contact
    else
      render json: {error: 'Error creating contact'}
    end
  end

  def show
    contact = Contact.find(params[:id])
    render json: contact
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(contact_params)
    render json: contact
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :category, :company)
  end

end
