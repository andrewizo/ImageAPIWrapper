class AnimeController < ApplicationController
    def random
      timestamp = Time.now.to_i
      response = HTTParty.get("https://api.waifu.pics/sfw/neko?timestamp=#{timestamp}")
      @url = JSON.parse(response.body)['url']
      Anime.create(url: @url)
      render 'anime/random'
    end
  end
  