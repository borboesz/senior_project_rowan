class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

 def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

   def create
    @user = User.new(params[:user])
    if @user.save
      flash[:alert] = "Welcome to the Sample App!"
      sign_in @user
      redirect_to @user
      salon_mailer.welcome_email(@user).deliver
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end


end
