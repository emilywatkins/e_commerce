class HomeController < ApplicationController
  def index
    response = JSON.parse(MostPopular.get_mostpopular_list)
    @popular_list = response['results']
    @random_title = self.random_article
  end

  def random_article
    prng = Random.new
    @random_title = @popular_list[prng.rand(0..14)]['title']
    respond_to do |format|
      format.html { render :index }
      format.js { render :action=>"refresh_part.js" }
    end
    return @random_title
  end
end
