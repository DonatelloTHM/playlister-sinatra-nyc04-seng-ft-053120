class GenresController < ApplicationController
    
    get '/genres' do
        @genres=genre.all
        erb :'genres/index'
    end

    get '/genres/:slug' do
        @genres=Genre.find_by{|genre| genre.slug==params[:slug]}
        erb :'genres/show'
    end
end