class ContactController < ApplicationController
  layout 'public'

  def new
    @navigation = Page.where(navbar: true).order_by('position ASC').all
    @setting = Setting.first
  end

  def create

  end
end
