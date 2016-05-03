class WelcomeController < ApplicationController
    
    require 'json'
    require 'open-uri'
    def index
        #store api key properly
        url = open('https://api.themoviedb.org/3/movie/top_rated?api_key=ca4334d02688d292fea8e1a1e15dba2b')
        movie_list = JSON.load(url)
        @movies = movie_list['results']
    end
end