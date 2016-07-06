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
      redirect_to root_path, 
        :notice => "Gracias por votar"
    elsif
      redirect_to root_path,
        :alert => "Error :c"
    end
  end
end
