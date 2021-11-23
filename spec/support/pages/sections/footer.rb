# frozen_string_literal: true

class Footer < SitePrism::Section
  elements :infos, 'span.text-muted'

  def paphos_phrase
    infos.first
  end

  def something_about_licence_but_not
    infos.last
  end
end
