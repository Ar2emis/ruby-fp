class Header < SitePrism::Section
  element :logo, 'a.navbar-brand'
  element :home_link, 'a.nav-link[href="/"]'
  element :about_link, 'a.nav-link[href="/about.html"]'
  element :faq_link, 'a.nav-link[href="/faq.html"]'

  element :search, 'input#search-input'
  elements :search_results, 'ul#results-container li a'
end
