# rubocop:disable all
require 'rails_helper'

RSpec.describe 'the signin process', type: :system do
  before do
    driven_by(:rack_test)
  end
  it 'Create category' do
    user1 = User.create(name: 'collins')
    visit root_path
    click_link_or_button 'Login'
    fill_in 'user[name]', with: user1.name
    click_button 'Login'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'Grassland'
    click_button 'create'
    expect(page).to have_text('category created')
  end

  it 'Create category' do
    user2 = User.create(name: 'tatang')
    visit root_path
    click_link_or_button 'Login'
    fill_in 'user[name]', with: user2.name
    click_button 'Login'
    click_link_or_button 'New Category'
    fill_in 'name', with: ''
    click_button 'create'
    expect(page).not_to have_text('category created')
  end
end
