require 'ipaddr'
class ChangesController < ApplicationController

  def create
    @change = Change.new(params[:change])
    
    @change.ip = IPAddr.new(request.ip.to_s,Socket::AF_INET).to_i
    if @change.save
      flash[:notice] = "Successfully created change."
      redirect_to '/'
    else
      raise 'fail '
    end
  end


end
