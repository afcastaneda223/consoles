class PagesController < ApplicationController
  def home
    @articles = Article.eager_load(:user, :category, image_attachment: :blob).order(cached_votes_score: :desc)
    @categories = Category.all
  end

  def playstation
    @articles = Article.where('category_id = 1').eager_load(:user, :category, image_attachment: :blob)
  end

  def xbox
    @articles = Article.where('category_id = 2').eager_load(:user, :category, image_attachment: :blob)
  end

  def nintendo
    @articles = Article.where('category_id = 3').eager_load(:user, :category, image_attachment: :blob)
  end

  def gamerpc
    @articles = Article.where('category_id = 4').eager_load(:user, :category, image_attachment: :blob)
  end
end
