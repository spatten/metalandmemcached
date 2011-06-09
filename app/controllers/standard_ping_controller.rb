class StandardPingController < ApplicationController
  def show
    res = Rails.cache.read(params[:id])
    render :text => res
  end

  def update
    Rails.cache.write(params[:id], params[:value])
    render :text => 'success'
  end
end
