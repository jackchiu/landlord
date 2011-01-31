class AmmetersController < ApplicationController
  def save
    @ammeter = Ammeter.new(params[:ammeter])
    @ammeter.amount = @ammeter.recompute_amount
    @ammeter.check_at = Time.now
    @ammeter.save if @ammeter.valid?

    if not @ammeter.new_record? then
      @ammeter.room.last_check_ammeter_at = @ammeter.check_at
      @ammeter.room.last_ammeter_amount = @ammeter.amount
      @ammeter.room.save
    end

    flash[:notice] = "Successful to save [#{@ammeter.room.sn}] last check ammeter time."

    redirect_to :controller => :rooms, :action => :index
  end
end
