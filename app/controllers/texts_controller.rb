class TextsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @texts = Text.all
  end
end
