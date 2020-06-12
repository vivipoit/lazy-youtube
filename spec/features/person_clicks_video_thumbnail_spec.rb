# frozen_string_literal: true

require 'rails_helper'

feature 'person clicks video thumbnail' do
  scenario 'sucessfully' do
    Video.create(name: "Let's Talk About Bathrooms", youtube_id: 'Jv7d8EXxtqs')

    visit root_path
    find('.youtube').click

    within '.youtube' do
      expect(page).to have_css 'iframe'
      expect(page).not_to have_css 'img'
      expect(page).not_to have_css '.with-button'
    end
  end
end
