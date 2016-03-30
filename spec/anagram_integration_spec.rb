require('capybara/rspec')
require('./app_anagram')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagram path', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit('/')
    fill_in('word1', :with => 'hello')
	fill_in('word2', :with => 'elhlo')
    click_button('Send')
    expect(page).to have_content('Yes')
  end
end
