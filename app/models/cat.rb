class Cat < ApplicationRecord
    validates :url, presence: true
    def self.random_cat
      Cat.create(url: CatApiService.random_cat_image)
    end
  end
  