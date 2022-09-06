class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :uikit, :profile ]

  def home
    @hike1 = Hike.first
    @hike2 = Hike.last
    @hike3 = Hike.find(64)
  end

  def uikit
  end

  def profile
    @user = current_user
    @hikes = Hike.all
    # @hike = Hike.find(params[:id])
    @bookings = current_user.bookings
    @my_hikes = Hike.where(user_id: current_user.id)
  end
end
