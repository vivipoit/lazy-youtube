# frozen_string_literal: true

require 'rails_helper'

feature 'person clicks video thumbnail' do
  scenario 'sucessfully' do
    Video.create(name: "Let's Talk About Bathrooms", youtube_id: 'Jv7d8EXxtqs')

    visit root_path
    find('.youtube').click
    wait_loading_and_buffering

    expect(page.driver.browser.execute_script('return player.getPlayerState()')).to eq 1
  end
end
