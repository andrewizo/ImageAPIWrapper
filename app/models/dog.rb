class Dog < ApplicationRecord
    validates :url, presence: true
    def self.random_dog
      Dog.create(url: DogApiService.random_dog_image)
    end
  end
  