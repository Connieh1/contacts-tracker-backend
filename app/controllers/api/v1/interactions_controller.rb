class Api::V1::InteractionsController < ApplicationController
  before_action :set_contact


  def index
    interactions = @contact.interactions
    render json: interactions
  end

  def create
    interaction = @contact.interactions.new(interaction_params)
    if interaction.save
      render json: interaction
    else
      render json: {error: 'Error creating interaction'}
  end

  def show
    interaction = @contact.interactions.find_by(id: params[:id])
    render json: interaction
  end

  def update
    interaction = Interaction.find(params[:id])
    interaction.update(interaction_params)
    render json: interaction
  end

  def destroy
    interaction = @contact.interactions.find_by(id: params[:id])
    interaction.destroy
  end

  private

  def set_contact
    @contact = Contact.find(params[:contact_id])
  end

  def interaction_params
    params.require(:interaction).permit(:contact_id, :date,
:description, :notes)
  end


end
