class JobsController < ApplicationController

  def index
    @message = "List of available jobs..."
    @jobs = Job.all
    @ships = Ship.all
  end

  def new
    @job = Job.new
    @message = "Create New Job Here"
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to url_for(:controller => :jobs, :action => :index)
    else
      # render the view named "new"
      render :new
    end
  end

  def show
    @message = "This is the show page."
  end

  def edit
    @message = "Edit Job Here"
  end

  def update
    # There is no view for the update action.
  end

  def destroy
    # There is no view for the destroy  action.
  end

  private

  def job_params
    params.require(:job).permit(:jobDescription, :jobOrigin, :jobDestination, :jobCost, :jobContainersAmount)
  end

end
