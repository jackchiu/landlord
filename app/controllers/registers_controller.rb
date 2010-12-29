class RegistersController < ApplicationController
  def new
    @reg = Register.new
    @reg.room_id = params[:id]

    if @reg.room.nil? 
      flash[:alert] = 'Invalid Room !'
      redirect_to :controller => :rooms
      return
    end

    if not @reg.room.state.eql?('empty')
      flash[:alert] = 'Can\' register, Room is not empty!'
      redirect_to :controller => :rooms
      return
    end
  end
      
  def create
    @reg = Register.new(params[:register])
    if @reg.valid?
      @reg.save
      
      if !@reg.new_record?
        @reg.room.update_attributes(:state => 'checkin')

        flash[:notice] = 'Registe successful!'
        redirect_to :controller => :rooms
      end
    else
      flash[:alert] = @reg.errors.to_s
      redirect_to :action => :new
    end
  end
end
