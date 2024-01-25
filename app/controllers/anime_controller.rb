# app/controllers/anime_controller.rb
class AnimeController < ApplicationController
  def random
    @anime = AnimeApiService.random_anime_image
    render 'anime/random'
  end
end
