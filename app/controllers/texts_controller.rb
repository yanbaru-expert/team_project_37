class TextsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"])
  end

  def show
    @text = Text.find(params[:id])
  end

  
end
