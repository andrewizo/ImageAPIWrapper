# app/models/random_image.rb
class RandomImage < ApplicationRecord
    def self.random
      order(Arel.sql('RANDOM()')).first
    end
  end
  