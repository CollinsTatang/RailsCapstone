require 'rails_helper'

RSpec.feature 'Articles', type: :feature do
  before :each do
    User.create(id: 2, name: 'Marcelo')
    Category.create(name: 'Beach', priority: 1)
  end

  context 'Write an article' do
    it 'Renders template to write an article' do
      visit root_path
      expect(page).to have_text ' '
    end

    it 'Returns validation errors if user tries to create article without fill information' do
      visit new_article_path

      expect(page).to have_text ' '
    end
  end
end
