class DogApiService
    BASE_URL = 'https://dog.ceo/api/breeds/image/random'.freeze
  
    def self.random_dog_image
      response = HTTParty.get(BASE_URL)
      url = JSON.parse(response.body)['message']
      Dog.create(url: url)
    end
  end
  