class WelcomeController < ApplicationController
  def index
    @featured_films = Film.where(featured: true).sample(3)
  end

  def about
    @featured_films = Film.where(featured: true).sample(3)
  end
end
