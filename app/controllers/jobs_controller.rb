class JobsController < ApplicationController

  def index
    @message = "This is the INDEX page."
    @jobs = Job.all
    @ships = Ship.all
  end

  def new
    @message = "This is the new page."
  end

  def create
    # There is no view for the create action.
  end

  def show
    @message = "This is the show page."
  end

  def edit
    @message = "This is the edit page."
  end

  def update
    # There is no view for the update action.
  end

  def destroy
    # There is no view for the destroy  action.
  end


end
