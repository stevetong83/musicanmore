class SettingsController < ApplicationController

  def edit
    @setting = Setting.find params[:id]
  end

  def update
    @setting = Setting.find params[:id]
    @setting.update_attributes params[:setting]
    if @setting.save
      redirect_to admin_home_path, notice: "Site settings have been updated"
    else
      render 'edit'
    end
  end

end