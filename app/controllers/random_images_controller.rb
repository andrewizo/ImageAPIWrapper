class RandomImagesController < ApplicationController
    def random
      response = HTTParty.get('https://source.unsplash.com/random/1080x1080')
      @url = response.request.last_uri.to_s
      RandomImage.create(url: @url)
      render 'random_images/random'
    end
  end
  