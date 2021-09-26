class Serie < ApplicationRecord
  has_many :comics
  has_many :characters, through: :comics
end
