require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/puppy' do
    info = params.to_s
  end
end
