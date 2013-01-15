class AdminController < ApplicationController


  def pages
    @pages = Page.all
    @navigation = Page.where(navbar: true).order_by('position ASC').all
  end

  def admin
    @pages = Page.all
  end


end
