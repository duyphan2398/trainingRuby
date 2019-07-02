class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      #flash.now[:'alert-success'] = 'Đang nhap thanh cong'
      redirect_to '/users'
    else
      flash.now[:'alert-danger'] = 'Wrong Password/Email'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end



end
