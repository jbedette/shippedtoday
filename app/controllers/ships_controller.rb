class ShipsController < ApplicationController

def index
    @message = "All the ships in the galaxy...."
    @ships = Ship.all
  end

  def new
    @ship = Ship.new
    @message = "Enter spaceship data below..."
    unless current_user
      redirect_to unauthenticated_root_path
    end
  end

  def create
  	@ship = Ship.new(ship_params)

    if @ship.save
      redirect_to user_ship_path(current_user, @ship)
    else
      Rails.logger.info "################### it didn't work ###################"
      Rails.logger.info @ship.errors.full_messages
      Rails.logger.info "################### it didn't work ###################"
    end
  end


  def show
    @message = "This is a Spaceship show page. Take me to your leader!!"
    @ship = Ship.find(params[:user_id])
  end

  def edit
    @message = "This is the Edit Ship form. Make them to your liking!"
    @ship = Ship.find(params[:id])
  end

  def update
    @ship = Ship.find(params[:id])
    @ship.update({
      name: params[:ship][:name],
      container: params[:ship][:container], location: params[:ship][:location]
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


  private

  def ship_params
    params.require(:ship).permit(:user_id, :name, :container, :location)

  end


end
