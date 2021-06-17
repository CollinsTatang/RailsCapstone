class VotesController < ApplicationController
  before_action :require_login
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    @article = Article.find_by(id: @vote.article.id)
    if @vote.save
      redirect_to category_path(@article.category)
      flash[:notice] = 'You Voted this article'
    else
      flash[:notice] = 'Somthing happened'
    end
  end

  def destroy
    vote = Vote.find_by(user: current_user, article_id: params[:article_id])
    @article = Article.find_by(id: vote.article.id)
    if vote
      vote.destroy
      redirect_to category_path(@article.category)
      flash[:notice] = 'You Unvoted this article'
    else
      redirect_to root_path
      flash[:notice] = 'somthing happened'
    end
  end
end
