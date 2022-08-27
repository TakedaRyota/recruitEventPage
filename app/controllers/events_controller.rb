class EventsController < ApplicationController

  before_action :logged_in_user, only:[:edit, :update, :destroy]
  
  def index
    @events = MstEvent.all
    @users = MstUser.all
  end

end
