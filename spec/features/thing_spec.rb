require 'rails_helper'

RSpec.feature 'Thing', type: :feature do
  scenario 'User creates a new thing' do
    visit '/trailblazer_engine_example/things/new'
    fill_in 'trailblazer_engine_example_thing_name', with: 'name of thingy'
    click_button 'Create'
  end
end