require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word list path',{:type =>:feature}) do
  it('processes the user entry and adds it to the list of words') do
  visit('/')
  fill_in('word', :with => "Banana")
  click_button('Add')
  expect(page.)to have_content("Success!")
  end
end
