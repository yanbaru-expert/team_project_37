class TextsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"])
  end

  
end
