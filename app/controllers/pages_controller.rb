class PagesController < ApplicationController
  def home
    @articles = Article.all.order(:cached_votes_score => :desc)
  end

  def playstation
  end

  def xbox
  end

  def nintendo
  end

  def gamerpc
  end
end
