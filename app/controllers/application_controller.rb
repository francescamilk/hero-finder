class ApplicationController < ActionController::Base

  private
  
  @client = Marvel::Client.new
  
  @client.configure do |config|
    config.api_key = ENV['MARVEL_PUBLIC_KEY']
    config.private_key = ENV['MARVEL_PRIVATE_KEY']
  end
  
  BASE_URL = 'https://gateway.marvel.com/'
end
