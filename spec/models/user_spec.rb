# rubocop:disable all
require 'rails_helper'
RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'cloudine') }
  context 'should create new user successfully' do
    it 'should return user name' do
      expect(user.name).to eq('cloudine')
    end
  end

  describe 'ActiveRecord associations' do
    it 'has many votes' do
      expect { should has_many(votes) }
    end
    it 'has many articles' do
      expect { should has_many(articles) }
    end
  end
end
