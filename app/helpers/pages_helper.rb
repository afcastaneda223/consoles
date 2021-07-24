module PagesHelper
  def cat_path(var)
    case var
    when 1
      pages_playstation_path
    when 2
      pages_xbox_path
    when 3
      pages_nintendo_path
    when 4
      pages_gamerpc_path
    end
  end

  def category_article(category_id)
    Category.find(category_id).articles.eager_load(image_attachment: :blob)
  end
end
