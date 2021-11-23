RSpec.describe 'FAQPage', type: :feature, js: true do
    let(:page) { FAQPage.new }
  
    before { page.load }
  
    it 'text displayed as expected' do

      expect(page).to have_text('What is this project about?')

    end

    it 'href about works as expected' do

        find(:xpath, "//a[@href='/about.html']" ).click
        expect(page).to have_text('Ruby Functional Programming (RFP)')
  
    end

  
  end