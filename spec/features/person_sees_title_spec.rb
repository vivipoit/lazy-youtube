# frozen_string_literal: true

require 'rails_helper'

feature 'person sees title' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_title 'vivipoit/lazy-youtube'
    expect(page).to have_css 'span.h1', text: 'vivipoit/lazy-youtube'
  end
end
