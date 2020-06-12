# frozen_string_literal: true

require 'rails_helper'

feature 'person creates video' do
  scenario 'sucessfully' do
    visit root_path
    click_on 'New Video'

    fill_in 'Name', with: 'Rails 5.2 ActiveStorage Introduction'
    fill_in 'YouTube ID', with: 'jtKEP_lsLco&t=284s'
    click_on 'Create Video'

    expect(page).to have_content 'Video created.'
    expect(page).to have_content 'Rails 5.2 ActiveStorage Introduction'
  end
end
