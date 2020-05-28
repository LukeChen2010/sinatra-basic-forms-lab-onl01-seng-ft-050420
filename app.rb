require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    info = params.to_s
    @puppy = Puppy.new(info[:name], info[:breed], info[:age])
    
    erb :display_puppy
  end
end
