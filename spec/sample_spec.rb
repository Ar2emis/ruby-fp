# frozen_string_literal: true

RSpec.describe 'Home', type: :feature, js: true do
  let(:page) { ApplicationPage.new }

  before { page.load }

  it 'has pafos phrase' do
    expect(page).to have_text('Functional Programming + Ruby = Friends!')
  end
end
