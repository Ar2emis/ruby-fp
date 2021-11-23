# frozen_string_literal: true

RSpec.describe 'Footer', type: :feature, js: true do
  let(:page) { HomePage.new }
  let(:section) { page.footer }

  before { page.load }

  it 'displays logo' do
    expect(section.paphos_phrase).to have_text('Powered by students for students')
  end

  it 'displays home link' do
    expect(section.something_about_licence_but_not).to have_text('September 2021 RFP')
  end
end
