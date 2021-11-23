# frozen_string_literal: true

RSpec.describe 'HomePage', type: :feature, js: true do
  let(:page) { HomePage.new }

  before { page.load }

  it 'text displayed as expected' do
    expect(page).to have_text('Functional Programming + Ruby = Friends!')
  end

  it 'searching posts as expected' do
    find(class: 'navbar-toggler-icon').click
    find_field(id: 'search-input').set('FAQ').click
    find(class: 'dropdown-item').click
    expect(page).to have_text('What is this project about?')
  end
end
