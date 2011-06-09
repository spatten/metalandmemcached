class StandardPingController < ApplicationController
  def show
    # render :text => CACHE.get(params[:slug])
    render :text => Rails.cache.read(params[:slug])
  end
end
