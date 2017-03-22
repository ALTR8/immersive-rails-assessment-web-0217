class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
  	@episode = Episode.find(params[:id])
  end

  def new
  	@episode = Episode.new
  end

  def create
  	@episode = Episode.create(params.requre(@episode).permit(:date, :number))
  end

end
