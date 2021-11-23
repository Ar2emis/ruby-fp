# frozen_string_literal: true

require_relative 'application_page'

class FAQPage < ApplicationPage
  set_url '/faq.html'

  element :title, 'h1'
end
