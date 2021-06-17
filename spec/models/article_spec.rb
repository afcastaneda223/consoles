require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'creation' do
    it 'can be created' do
      article1 = create(:article, :with_image)
      expect(article1).to be_valid
    end
  end
end
