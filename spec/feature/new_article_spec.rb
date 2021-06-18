# rubocop:disable all
require 'rails_helper'
RSpec.describe 'Create article proccess', type: :system do
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
    fill_in 'name', with: 'achieve'
    click_button 'create'
    expect(page).to have_text('category created')
  end

  it 'Create article' do
    user1 = User.create(name: 'tatang')
    visit root_path
    click_link_or_button 'Login'
    fill_in 'user[name]', with: user1.name
    click_button 'Login'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'Grassland'
    click_button 'create'
    expect(page).to have_text('category created')
    click_link_or_button 'New Category'
    fill_in 'Title', with: 'Culture'
    fill_in 'Text', with: ' Best dish'
    attach_file 'Image', "#{Rails.root}/app/assets/images/ball.jpg"
    click_button 'create'
    expect(page).to have_text('Your Category article created!')
  end
  it 'Create article' do
    user1 = User.create(name: 'john')
    visit root_path
    click_link_or_button 'Login'
    fill_in 'user[name]', with: user1.name
    click_button 'Login'
    click_link_or_button 'New Category'
    fill_in 'name', with: 'North'
    click_button 'create'
    expect(page).to have_text('category created')
    click_link_or_button 'New Category'
    fill_in 'Title', with: 'Culture'
    fill_in 'Text', with: 'Grassland'
    attach_file 'Image', "#{Rails.root}/app/assets/images/3.jpg"
    click_button 'create'
    expect(page).to have_text('Your Category article created!')
  end

end