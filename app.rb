require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb :play
  end
end
