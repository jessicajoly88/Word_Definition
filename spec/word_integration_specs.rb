require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word list path',{:type =>:feature}) do
  it('processes the user entry and adds it to the list of words') do
  visit('/')
  fill_in('word', :with => 'Banana')
  click_button('Add')
  expect(page).to have_content("Success!")
  end
end

describe('word path'),{:type =>:feature}) do
  it('processes user request to see individual word page') do
    visit('/word/1')
    expect(page).to have_content("Banana")
end

describe('add definition path'),{:type =>:feature}) do
  it('processes user input for the definition of a word and saves it') do
    visit('/word/1')
    fill('definition',:with => 'A banana is a wonderful thing')
    click_button('Add Definition')
    expect(page).to have_content("Success!")
end
