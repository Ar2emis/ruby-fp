# frozen_string_literal: true

Dir[File.join(__dir__, 'sections/*.rb')].sort.each { |file| require_relative file }

class ApplicationPage < SitePrism::Page
  section :header, Header, 'nav'
  section :footer, Footer, 'footer'
end
