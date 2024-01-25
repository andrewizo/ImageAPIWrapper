# app/services/cat_api_service.rb
class CatApiService
    BASE_URL = 'https://api.thecatapi.com/v1'.freeze
  
    def self.random_cat_image
      response = HTTParty.get("#{BASE_URL}/images/search")
      url = JSON.parse(response.body).first['url']
      Cat.create(url: url)
    end
  end
  