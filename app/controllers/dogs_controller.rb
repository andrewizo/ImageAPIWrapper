class DogsController < ApplicationController
  def random
    response = HTTParty.get('https://dog.ceo/api/breeds/image/random')
    url = JSON.parse(response.body)['message']
    @dog = Dog.create(url: url)
    Rails.logger.debug "Dog Image URL: #{url}" # Add this line for debugging
    render 'dogs/random'
  end
end
