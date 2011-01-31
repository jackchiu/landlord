class BillsController < ApplicationController
  def new
    @bill = Bill.new
    @bill.register_id = params[:reg_id]
    @ammeters = Ammeter.find_all_by_room_id(@bill.register.room_id)
  end

  def create
    @bill = Bill.new(params[:bill])
    @bill.save if @bill.valid?
  end
end
