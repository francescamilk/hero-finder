class ResultController < ApplicationController
  def index
    @characters = @client.characters(nameStartsWith: params[:query], orderBy: 'name')
    @comics = @client.comics(titleStartsWith: params[:query], orderBy: 'title')
    @series = @client.series(titleStartsWith: params[:query], orderBy: 'title')
    @creators = @client.creators(lastName: params[:query], orderBy: 'lastName')
  end
end
