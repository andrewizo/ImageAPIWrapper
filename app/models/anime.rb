class Anime < ApplicationRecord
    validates :url, presence: true
    def self.random_anime
      Anime.create(url: AnimeApiService.random_anime_image)
    end
  end
  