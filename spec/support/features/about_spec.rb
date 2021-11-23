# frozen_string_literal: true

RSpec.describe 'AboutPage', type: :feature, js: true do
  let(:page) { AboutPage.new }

  before { page.load }

  it 'text displayed as expected' do
    expect(page).to have_text('Ruby Functional Programming (RFP) ')
  end
end
