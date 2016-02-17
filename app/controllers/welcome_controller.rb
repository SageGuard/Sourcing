class WelcomeController < ApplicationController
  def index
    @title = "Home"
    @body_class = "class=\"collapsing_header\"".html_safe
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end
end
