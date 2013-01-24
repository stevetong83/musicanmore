class AdminController < ApplicationController
  before_filter :authenticate_user!

  def pages
    @pages = Page.all
    @navigation = Page.where(navbar: true).order_by('position ASC').all
    @setting = Setting.first
  end

  def home
    @pages = Page.all
    @users = User.all
    @setting = Setting.first
  end

  def navbar
    @pages = Page.where(navbar: true).order_by('position ASC').all
    @setting = Setting.first
  end

end

