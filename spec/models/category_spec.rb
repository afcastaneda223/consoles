require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'creation' do
    it 'can be created' do
      category1 = create(:category)
      expect(category1).to be_valid
    end
  end
end
