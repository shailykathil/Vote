class SettingController < ApplicationController
 def new
    @setting = Setting.new(:start_time => Time.now)
  end

  # if you're updating an existing object
  def create
    @setting=Setting.create(:start_time=>Time.now,:end_time=>Time.now+ 30.minute)
  end
  def edit
     @setting = Setting.find(params[:id])
     @setting.start_time = Time.now if @setting.start_time.nil?
  end


end
