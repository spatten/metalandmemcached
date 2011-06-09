class StandardPingController < ApplicationController
  def show
    render :text => CACHE.get(params[:slug])
  end
end
