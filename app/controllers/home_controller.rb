class HomeController < ApplicationController
  def index
    response = JSON.parse(MostPopular.get_mostpopular_list)
    @popular_list = response['results']
  end
end
