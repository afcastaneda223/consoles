require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(title: "abcdefg", body: "abcdefghijk", user: User.first, category: Category.first, ActiveStorage::Attached::One),
      Article.create!(title: "abcdefg", body: "abcdefghijk", user: User.first, category: Category.first, image: ActiveStorage::Attached)
    ])
  end

  it "renders a list of articles" do
    render
  end
end
