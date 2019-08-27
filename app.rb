require_relative 'config/environment'

class App < Sinatra::Base
  #index action
  get '/' do 
    # @puppies = Puppy.all
    erb :index 
  end 

  #new action 
  get '/new' do 
    erb :create_puppy 
  end


  # get '/:id' do 
  #   @puppy = Puppy.find(params[:id])
  #   erb :display_puppy 
  # end 

  #create action 
  post '/puppy' do 
    # binding.pry
    @puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
    @name = @puppy.name
    @breed = @puppy.breed
    @months_old = @puppy.months_old
    erb :display_puppy
    # redirect "/#{puppy.id}"
  end

end
