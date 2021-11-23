# frozen_string_literal: true

RSpec.describe 'FAQPage', type: :feature, js: true do
  let(:page) { FAQPage.new }

  before { page.load }

  it 'displays title' do
    expect(page.title).to have_text('FAQ')
  end
end
