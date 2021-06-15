require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(name: 'Play Station', priority: "1"))
  end

  it "renders attributes in <p>" do
    render
  end
end
