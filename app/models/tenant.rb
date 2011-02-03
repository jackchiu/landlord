class Tenant < ActiveRecord::Base
  def title
    @title = name
    @title << " - " + desc if not desc.nil?
    @title << " - " + cellphone if not cellphone.nil?
    return @title
  end
end
