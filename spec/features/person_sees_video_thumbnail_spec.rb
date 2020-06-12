# frozen_string_literal: true

require 'rails_helper'

feature 'person sees video thumbnail' do
  scenario 'sucessfully' do
    Video.create(name: "Let's Talk About Bathrooms", youtube_id: 'Jv7d8EXxtqs')

    visit root_path

    expect(page).to have_css 'h2', text: "Let's Talk About Bathrooms"
    expect(page).to have_css "img[src='https://img.youtube.com/vi/Jv7d8EXxtqs/sddefault.jpg']"
  end
end
