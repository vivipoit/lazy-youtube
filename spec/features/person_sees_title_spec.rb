# frozen_string_literal: true

require 'rails_helper'

feature 'person sees title' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_title 'vivipoit/lazy-youtube'
    expect(page).to have_css 'h1', text: 'lazy-youtube'
  end
end
