require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies path', {:type => :feature}) do
  it('receives number and outputs allergies') do
    visit('/')
    fill_in('score', :with => '28')
    click_button('Go')
    expect(page).to have_content("tomatoes, strawberries, shellfish")
  end
end
