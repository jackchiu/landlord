class BillsController < ApplicationController
  def new
    @bill = Bill.new :register_id => params[:reg_id]

    @reg = @bill.register
    @bill.pay_at = @reg.registe_at
    @bill.rooms_payment = @reg.rent * @reg.bill_interval
    @bill.water_payment = @reg.water_price * @reg.bill_interval

    @pre_bill = @reg.last_bill
    @bill.pay_at = @pre_bill.pay_at.months_since(@reg.bill_interval) if not @pre_bill.nil?

    @ammeters = Ammeter.find_all_by_room_id(@bill.register.room_id)
  end

  def create
    @bill = Bill.new(params[:bill])
    @bill.save if @bill.valid?
    @bill.register.last_bill_id = @bill.id
    @bill.register.save if not @bill.new_record?
    @bill.register.room.last_pay_at = @bill.pay_at
    @bill.register.room.save
    redirect_to :controller => :rooms
  end
end
