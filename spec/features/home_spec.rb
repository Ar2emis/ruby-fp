# frozen_string_literal: true

RSpec.describe 'HomePage', type: :feature, js: true do
  let(:page) { HomePage.new }

  before { page.load }

  it 'displays logo' do
    expect(page).to have_logo
  end

  it 'displays slogan' do
    expect(page.slogan).to have_text('Functional Programming + Ruby = Friends!')
  end
end
