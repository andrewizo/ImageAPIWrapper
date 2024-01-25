# app/services/anime_api_service.rb
class AnimeApiService
    BASE_URL = 'https://api.waifu.pics/sfw/neko'.freeze
  
    def self.random_anime_image
      timestamp = Time.now.to_i
      response = HTTParty.get("#{BASE_URL}?timestamp=#{timestamp}")
      url = JSON.parse(response.body)['url']
      Anime.create(url: url)
    end
  end
  