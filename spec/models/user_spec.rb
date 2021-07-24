require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user1 = create(:user)
      expect(user1).to be_valid
    end
  end
end
