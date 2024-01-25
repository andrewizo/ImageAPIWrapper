class CatsController < ApplicationController
    def random
      timestamp = Time.now.to_i
      response = HTTParty.get("https://api.thecatapi.com/v1/images/search?timestamp=#{timestamp}")
      @url = JSON.parse(response.body).first['url']
      Cat.create(url: @url)
      render 'cats/random'
    end
  end
  