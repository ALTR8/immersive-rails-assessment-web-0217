class AppearancesController < ApplicationController

	def index
	end

	def new
		@appearance = Appearance.new
	end

	def create
		@appearance = Appearance.new(params.require(@appearance).permit(:guest_id, :episode_id, :rating))
		@appearance.save
		redirect_to appearance_path(@appearance)
	end

	def show
		@appearance = Appearance.find(params[:id])
	end
end