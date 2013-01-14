class PagesController < ApplicationController
  before_filter :authenticate_user!, except: [:home, :show]
  layout 'public', only: [:home, :show]
  
  def home
    @home = Page.where(title: 'Home').first
    @navigation = Page.where(navbar: true).order_by('position ASC').all
    if @home.page_title?
      @page_title = @home.page_title
    else
      @page_title = "#{@home.title} | Music an' More"
    end
  end

  def index
    @pages = Page.all
  end

  def new
  	@page = Page.new
  end

  def create
  	@page = Page.create params[:page]
  	if @page.save
  		redirect_to pages_path, notice: "Page created successfully"
    else
      render 'new'
    end
  end

    def show
    @page = Page.find params[:id]
    @navigation = Page.where(navbar: true).order_by('position ASC').all
    if @page.page_title?
      @page_title = @page.page_title
    else
      @page_title = "#{@page.title} | Music an' More"
    end
  end

  def edit
    @page = Page.find params[:id]
  end

  def update
    @page = Page.find params[:id]
    @page.update_attributes params[:page]
    if @page.save
      redirect_to pages_path, notice: "Page was updated successfully"
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find params[:id]
    @page.destroy
    redirect_to pages_path, notice: "Page has been deleted"
  end



end
