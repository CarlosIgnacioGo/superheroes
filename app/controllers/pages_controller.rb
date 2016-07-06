class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batmanvssuperman
  end

  def create
  	@vote = Vote.new(heroe: params[:heroe], email: params[:email]);

  	if @vote.save
  		render json: params
  	end
  end
end
