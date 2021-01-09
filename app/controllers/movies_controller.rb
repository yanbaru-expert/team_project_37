class MoviesController < ApplicationController
    before_action :authenticate_user!

    def index
        @movies = Movie.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"])
    end
end