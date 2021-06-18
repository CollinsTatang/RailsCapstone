# rubocop:disable all
require 'rails_helper'
RSpec.describe Vote, type: :model do
  describe 'ActiveRecord associations' do
    it 'has many comments' do
      expect { should belong_to(users) }
    end
    it 'belong to  article' do
      expect { should belong_to(articles) }
    end
    it 'belong to user' do
      expect { should validate_uniqueness_of(user_id).scoped_to(:article_id) }
    end
  end
end
