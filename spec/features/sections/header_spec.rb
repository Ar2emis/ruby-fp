# frozen_string_literal: true

RSpec.describe 'Header', type: :feature, js: true do
  let(:page) { HomePage.new }
  let(:section) { page.header }

  before { page.load }

  it 'displays logo' do
    expect(section.logo).to have_text('RFP')
  end

  it 'displays home link' do
    expect(section.home_link).to have_text('Home')
  end

  it 'displays about link' do
    expect(section.about_link).to have_text('About')
  end

  it 'displays faq link' do
    expect(section.faq_link).to have_text('FAQ')
  end

  it 'searching posts as expected' do
    section.search.click
    section.search.fill_in(with: 'Home')
    expect(section.search_results).not_to be_empty
  end
end
