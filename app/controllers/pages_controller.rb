class PagesController < ApplicationController
  def home
    @characters = @client.characters(nameStartsWith: params[:query], orderBy: 'name')
    @comics = @client.comics(titleStartsWith: params[:query], orderBy: 'title')
    @series = @client.series(titleStartsWith: params[:query], orderBy: 'title')
    @creators = @client.creators(lastName: params[:query], orderBy: 'lastName')
    
    
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { movies: @movies } }
    end
  end
end