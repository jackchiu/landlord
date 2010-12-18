class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:room])
    if @room.valid?
      @room.save
      flash[:notice] = "Create Error"
      flash[:notice] = "Create Successful" if !@room.new_record?
      redirect_to :action => :index
    else
      flash[:alert] = @room.errors.to_s
      redirect_to :action => :new
    end
  end
end
