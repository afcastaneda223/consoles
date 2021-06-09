class PagesController < ApplicationController
  before_action :set_cats
  def home
    @articles = Article.all.order(cached_votes_score: :desc)
  end

  def playstation;
    @articles = Article.all.order('created_at DESC')
  end

  def xbox;
    @articles = Article.all.order('created_at DESC')
  end

  def nintendo
    @articles = Article.all.order('created_at DESC')
  end

  def gamerpc
    @articles = Article.all.order('created_at DESC')
  end

  private

  def set_cats
    @cats = Category.all
  end

end

