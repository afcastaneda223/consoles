require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(name: 'Play Station', priority: "1"),
      Category.create!(name: 'Xbox', priority: "2")
    ])
  end

  it "renders a list of categories" do
    render
  end
end
