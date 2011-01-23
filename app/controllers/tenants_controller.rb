class TenantsController < ApplicationController
  def new
    @tenant = Tenant.new
  end

  def create 
    @tenant = Tenant.new(params[:tenant])
    @tenant.save if @tenant.valid?
    redirect_to :controller => "rooms" 
  end
end
