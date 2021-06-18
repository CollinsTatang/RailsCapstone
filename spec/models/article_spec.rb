# rubocop:disable all
require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:category) { Category.create(name: 'grassland', priority: '1') }
  context 'should create new article successfully' do
    it 'should return categorie name' do
      expect(category.name).to eq('grassland')
    end
    it 'should return priority name' do
      expect(category.priority).to eq(1)
    end
  end

  describe 'validations' do
    subject do
      Article.new(
        title: 'Article one',
        text: 'hello text',
        creator_id: @user.id,
        categorie_id: @category.id,
        image_file_name: 'image.jpg',
        image_content_type: 'image/jpg',
        image_file_size: '8192',
        image_updated_at: nil
      )
    end
    describe 'Validations' do
      it 'validate presence of creator ' do
        expect { should validate_presence_of(:creator) }
      end
      it 'validate presence of title ' do
        expect { should validate_presence_of(:title) }
      end
      it 'validate presence of text ' do
        expect { should validate_presence_of(:text) }
      end
      it 'validate presence of text ' do
        expect { should validate_presence_of(:categorie) }
      end
    end
  end
end
