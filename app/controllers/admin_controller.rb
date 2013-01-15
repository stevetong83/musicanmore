class AdminController < ApplicationController


  def pages
    @pages = Page.all
    @navigation = Page.where(navbar: true).order_by('position ASC').all
  end

  def home
    @pages = Page.all
    @users = User.all
  end


end
