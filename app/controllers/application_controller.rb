class ApplicationController < ActionController::Base
  before_action :config_client

  private 

  def config_client    
    @client = Marvel::Client.new
    
    @client.configure do |config|
      config.api_key = ENV['MARVEL_PUBLIC_KEY']
      config.private_key = ENV['MARVEL_PRIVATE_KEY']
    end
  end
end
