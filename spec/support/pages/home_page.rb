# frozen_string_literal: true

require_relative 'application_page'

class HomePage < ApplicationPage
  set_url '/'

  element :logo, 'img[alt="f(ruby)"]'
  element :slogan, 'h1'
end
