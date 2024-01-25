# app/controllers/random_images_controller.rb
class RandomImagesController < ApplicationController
  def random
    @random_image = RandomImage.random
    render 'random_images/random'
  end
end
