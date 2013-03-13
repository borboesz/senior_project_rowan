class AppointmentsController < ApplicationController
  def new
  	@appointment = Appointment.new

  	@services = Service.all

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def create
  	@appointment = appointment.new(params[:appointment])
    if @appointment.save
      flash[:alert] = "Appointment has been made!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end
end
