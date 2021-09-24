class Comic < ApplicationRecord
  belongs_to :serie
  has_many :characters
end
