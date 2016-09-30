
require 'spec_helper'

feature 'visitor adds a new contact' do
  scenario 'add contact with image' do
    visit root_path
    click_link 'New Contact'
    fill_in 'Name', with: 'Cat Cat'
    attach_file 'Avatar', fixture_image_path
    click_button 'Add a contact'

    expect(page).to have_css('h2', text: 'Cat Cat')
    expect(page).to have_xpath("//img[contains(@src, 'cat.jpg')]")
  end

  scenario 'add contact without image' do
    visit root_path
    click_link 'New contact'
    fill_in 'Name', with: 'Cat Cat'
    click_button 'Add a contact'

    expect(page).to have_css('h2', text: 'Cat Cat')
    expect(page).to have_xpath("//img[contains(@src, 'missing.png')]")
  end

  def fixture_image_path
    Rails.root.join('spec', 'support', 'cat.jpg')
  end
end