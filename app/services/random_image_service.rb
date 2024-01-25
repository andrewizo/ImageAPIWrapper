# app/services/random_images_api_service.rb
class RandomImagesApiService
    BASE_URL = 'https://source.unsplash.com/random/1080x1080'.freeze
  
    def self.random_image
      url = BASE_URL
      RandomImage.create(url: url)
    end
  end
  