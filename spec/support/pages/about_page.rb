# frozen_string_literal: true

require_relative 'application_page'

class AboutPage < ApplicationPage
  set_url '/about.html'

  element :title, 'h1'
end
