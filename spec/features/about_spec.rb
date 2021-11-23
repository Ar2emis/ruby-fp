# frozen_string_literal: true

RSpec.describe 'AboutPage', type: :feature, js: true do
  let(:page) { AboutPage.new }

  before { page.load }

  it 'displays title' do
    expect(page.title).to have_text('About')
  end
end
