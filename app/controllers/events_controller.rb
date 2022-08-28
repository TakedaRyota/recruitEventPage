class EventsController < ApplicationController

  before_action :logged_in_user, only:[:edit, :update, :destroy]
  
  def index
    @events = MstEvent.all.order(date: "ASC")
    @users = MstUser.all
  end

end
