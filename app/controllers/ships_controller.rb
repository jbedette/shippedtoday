class ShipsController < ApplicationController

def index
    @message = "All the ships in the galaxy...."
    @ships = Ship.all
  end

  def new
    @ship = Ship.new
    @message = "This is the new Spaceship form."
  end

  def create
  	@message = "Message here!!!"
  end

  
  def show
    @message = "This is a Spaceship show page. Take me to your leader!!"
    @ship = Ship.find(params[:id])
  end

  def edit
    @message = "This is the Edit Ship form. Make them to your liking!"
    @ship = Ship.find(params[:id])
  end

  def update
    @ship = Ship.find(params[:id])
    @ship.update({
      name: params[:ship][:name],
      containers: params[:ship][:containers], location: params[:ship][:location]
    })

    if (@ship)
      redirect_to url_for(:controller => :ships, :action => :index)
    else
      redirect_to url_for(:controller => :ships, :action => :edit)
    end
  end

  def destroy
    Ship.delete(params[:id])
    redirect_to url_for(:controller => :ships, :action => :index)
  end




	
end
