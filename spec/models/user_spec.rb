# rubocop:disable all
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ActiveRecord associations' do
    it 'has many articles' do
      expect { should has_many(articles) }
    end
    it 'has many votes' do
      expect { should has_many(votes) }
    end
  end
end
