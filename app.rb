require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
      ship_one = Ship.new(params["pirate"]["ship"][0]["name"], params["pirate"]["ship"][0]["type"], params["pirate"]["ship"][0]["booty"])
      ship_one = Ship.new(params["pirate"]["ship"][1]["name"], params["pirate"]["ship"][1]["type"], params["pirate"]["ship"][1]["booty"])
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
