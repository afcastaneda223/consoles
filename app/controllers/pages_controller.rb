class PagesController < ApplicationController
  def home
    @articles = Article.all.order(cached_votes_score: :desc)
    @categories = Category.all
  end

  def playstation
    @articles = Article.all.order('created_at DESC')
  end

  def xbox
    @articles = Article.all.order('created_at DESC')
  end

  def nintendo
    @articles = Article.all.order('created_at DESC')
  end

  def gamerpc
    @articles = Article.all.order('created_at DESC')
  end

end
