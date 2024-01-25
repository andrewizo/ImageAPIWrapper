class DogsController < ApplicationController
  def random
    @dog = DogApiService.random_dog_image
    render 'dogs/random'
  end
end
