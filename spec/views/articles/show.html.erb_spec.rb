require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(title: "abcdefg", body: "abcdefghijk", user: "1", category_id: "1"))
  end

  it "renders attributes in <p>" do
    render
  end
end
