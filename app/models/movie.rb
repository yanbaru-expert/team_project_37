class Movie < ApplicationRecord
  with_options presence: true do
    validates :genre, :title, :url
  end
end
