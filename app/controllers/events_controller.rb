class EventsController < ApplicationController
  def index
    @events = MstEvent.all
    @users = MstUser.all
  end
end
