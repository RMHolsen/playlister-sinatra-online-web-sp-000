class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do
    #displays a list of songs (FAILED - 2)
    @songs = Song.all
    #contains links to each song's show page (FAILED - 3)
    erb :'/songs/index'
  end 

  get '/artists' do
    #displays a list of artists (FAILED - 5)
    @artists = Artist.all
    #contains links to each artist's show page (FAILED - 6)
    erb :'/artists/index'
  end 

  get '/genres' do
    #displays a list of genres (FAILED - 8)
    @genres = Genre.all
    #contains links to each genre's show page (FAILED - 9)
    erb :'/genres/index'
  end 

  get '/songs/new' do
    #without an existing artist
      #creates a new artist on submit (FAILED - 25)
      #creates a new song on submit (FAILED - 26)
      #redirects to '/songs/:slug' after creation (FAILED - 27)
    #with an existing artist
      #does not create a new artist (FAILED - 28)
      #creates a new song and associates it with an existing artist (FAILED - 29)
      #redirects to '/songs/:slug' after creation (FAILED - 30)
  end

  get '/songs/:slug' do
    #displays the song's artist (FAILED - 11)
    #displays the song's genres (FAILED - 12)
    #contains links to the artist's show page (FAILED - 13)
    #contains links to each genre's show page (FAILED - 14)
    erb :'/songs/show'
  end
  
  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    binding.pry
    #displays the artist's songs (FAILED - 16)
    #displays the artist's genres (FAILED - 17)
    #contains links to each song's show page (FAILED - 18)
    #contains links to each genre's show page (FAILED - 19)
    erb :'/artists/show'
  end
  
  get '/genres/:slug' do
    #displays the genre's artists (FAILED - 21)
    #displays the genre's songs (FAILED - 22)
    #contains links to each artist's show page (FAILED - 23)
    #contains links to each song's show page (FAILED - 24)
    erb :'/genres/show'
  end
  
  get '/songs/:slug/edit' do
  #changing a song's artist
    #updates the song's artist (FAILED - 31)
    #renders to the song show page (FAILED - 32)
  #changing a song's genres
    #has a checkbox element on the form (FAILED - 33)
    #updates the song's genres (FAILED - 34)
    #renders to the song show page (FAILED - 35)
  end 
end