# frozen_string_literal: true

require 'rails_helper'

feature 'person creates video' do
  before :each do
    visit root_path
    click_on 'New Video'
  end

  scenario 'sucessfully' do
    fill_in 'Name', with: 'Rails 5.2 ActiveStorage Introduction'
    fill_in 'YouTube ID', with: 'jtKEP_lsLco'
    click_on 'Create Video'

    expect(page).to have_content 'Video created.'
    expect(page).to have_content 'Rails 5.2 ActiveStorage Introduction'
  end

  scenario 'with no name' do
    fill_in 'YouTube ID', with: 'jtKEP_lsLco'
    click_on 'Create Video'

    expect(page).to have_content 'Problems creating video.'
  end

  scenario 'with no YouTube ID' do
    fill_in 'Name', with: 'Rails 5.2 ActiveStorage Introduction'
    click_on 'Create Video'

    expect(page).to have_content 'Problems creating video.'
  end

  scenario 'with entire YouTube url' do
    fill_in 'Name', with: 'Rails 5.2 ActiveStorage Introduction'
    fill_in 'YouTube ID', with: 'https://www.youtube.com/watch?v=jtKEP_lsLco'
    click_on 'Create Video'

    expect(page).to have_content 'Problems creating video.'
  end
end
