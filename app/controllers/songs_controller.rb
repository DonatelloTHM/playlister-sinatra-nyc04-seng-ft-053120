class SongsController < ApplicationController
    
    get '/songs' do
        @songs=Song.all
        erb :'songs/index'
    end

    get '/songs/:slug' do
        @songs=Song.find_by{|song| song.slug==params[:slug]}
        erb :'songs/show'
    end

    
end