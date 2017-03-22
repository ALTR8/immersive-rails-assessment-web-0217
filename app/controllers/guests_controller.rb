class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
  	@guest = Guest.new
  end

  def show
  	@guest = Guest.find(params[:id])
  end

  def create
  	@guest = Guest.new
  	if @guest.save
  		redirect_to guest_path(@guest)
  	else
  		redirect_to new_guest_path
   	end
   end
end
