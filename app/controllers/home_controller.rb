class HomeController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
    @array = []
    Article.all.each { |article| @array << article.votes }
    @votes_array = []
    @array.each { |vote| @votes_array << vote.count }
    @most_voted = @votes_array.max(1).first
  end
end
