class WelcomeController < ApplicationController
  def index
    @title = "Home"
    @body_class = " class=\"collapsing_header\"".html_safe

    ids = Project.pluck(:id).shuffle[0..2]
    @projects = Project.where(id: ids)
  end

  def about
    @title = "About"
    @members = TeamMember.all
  end
end
