class UsersController < ApplicationController
  def index
  	@message = "You can see all of your users here..."
  	@Users = User.all
  end


  def show

    @message = "this is your profile page"
  end
end
