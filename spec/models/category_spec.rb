# rubocop:disable all
require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.create(name: 'North', priority: '2') }
  context 'should create new categorie successfully' do
    it 'should return categorie name' do
      expect(category.name).to eq('North')
    end
    it 'should return priority' do
      expect(category.priority).to eq(2)
    end
  end

  describe 'ActiveRecord associations' do
    it 'has many votes' do
      expect { should has_many(votes) }
    end
    it 'has many articles' do
      expect { should has_many(articles).with_foreign_key }
    end
  end
end
