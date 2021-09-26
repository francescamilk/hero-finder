class CharactersController < ApplicationController
  def index
    @characters = Character.search_by_name(params[:query])
  end
end
