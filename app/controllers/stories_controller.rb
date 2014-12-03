require 'soundcloud'

class StoriesController < ApplicationController
  
  def index
  end	

  def show
    # client = SoundCloud.new(:client_id => '69e93cf2209402f6f3137a6452cf498f')
    # @story  = client.get("/tracks/#{params[:id]}")
  end

  def playlists
    client = SoundCloud.new(:client_id => '69e93cf2209402f6f3137a6452cf498f')
    @playlist = client.get("/playlists/#{params[:playlist_id]}") 
    @current_track_id = params[:current_track_id].to_i 

    @story = @playlist.tracks.find do |track|
              track[:id] == params[:current_track_id].to_i
            end
    render "show"
  end

  
    # fetch the playlist from the soundcloud api
    # fetch the tracks element, which is an array
    # find the current track in the tracks in the playlist, set it to story


end
