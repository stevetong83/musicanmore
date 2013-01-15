require 'spec_helper'

describe "Pages" do

	before do
		@user = User.create(email: 'stevetong83@hotmail.com', password: 'password', password_confirmation: 'password')
		login_as @user
	end

  describe "Create Page" do
    it "should create a new page" do
      
      visit admin_admin_path
      click_link 'New Page'
      page.should have_content('New Page')

      fill_in "Title",				with: "New Page Title"
      fill_in "Body",					with: "Page Content"

      click_button "Create Page"

      page.should have_content('Page created successfully')
    end
  end
end
