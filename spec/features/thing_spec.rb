require 'rails_helper'

RSpec.feature 'Thing', type: :feature do
  scenario 'User creates a new thing' do
    visit '/trailblazer_engine_example/things/new'
    click_button 'Create'
  end
end