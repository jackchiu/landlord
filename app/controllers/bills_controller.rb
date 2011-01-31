class BillsController < ApplicationController
  def new
    @bill = Bill.new
    @bill.register_id = params[:reg_id]
    @ammters = Ammeter.find_all_by_room_id(@bill.register.room_id)
  end
end
