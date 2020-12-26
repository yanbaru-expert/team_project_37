class Text < ApplicationRecord
  with_options presence: true do
    validates :genre, :title, :content
  end
end
