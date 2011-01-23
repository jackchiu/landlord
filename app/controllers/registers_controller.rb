class RegistersController < ApplicationController
  def new
    @reg = Register.new
    @tenants = Tenant.all
    @reg.room_id = params[:id]

    if @reg.room.nil? 
      flash[:alert] = 'Invalid Room !'
      redirect_to :controller => :rooms
      return
    end

    if @reg.room.last_check_ammeter_at.nil?
      flash[:alert] = 'Can\'t register, This\'s room is never check ammeter.'
      redirect_to :controller => :rooms
      return 
    end

    if @reg.room.last_check_ammeter_at.localtime.strftime("%D") != Time.now.strftime("%D")
      flash[:alert] = 'Can\'t register, This\'s room is not check ammmeter on today.'
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
      
      if not @reg.new_record?
        @reg.room.update_attributes(:state => 'checkin', :register_id => @reg.id)

        flash[:notice] = 'Registe successful!'
        redirect_to :controller => :rooms
      end
    else
      flash[:alert] = @reg.errors.to_s
      redirect_to :action => :new
    end
  end
end
