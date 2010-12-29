class RegistersController < ApplicationController
  def new
    @reg = Register.new
    @reg.room_id = params[:id]

    if @reg.room.nil? 
      flash[:alert] = 'Invalid Room !'
      redirect_to :controller => :rooms
    end

    if not @reg.room.state.eql?('empty')
      flash[:alert] = 'Can\' register, Room is not empty!'
      redirect_to :controller => :rooms
    end
      
  end
end
