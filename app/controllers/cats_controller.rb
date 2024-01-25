# app/controllers/cats_controller.rb
class CatsController < ApplicationController
  def random
    @cat = CatApiService.random_cat_image
    render 'cats/random'
  end
end
