class ItemController < ApplicationController
  def index
  	Podio.setup(:api_key => 'YOUR_API_KEY', :api_secret => 'YOUR_API_SECRET')

    Podio.client.authenticate_with_auth_code('AUTHORIZATION_CODE', redirect_uri)

  end

  def new
  end
end
