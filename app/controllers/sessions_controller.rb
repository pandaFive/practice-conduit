class SessionsController < ApplicationController
  def new
  end

  def create
    author = Author.find_by(email: params[:session][:email].downcase)
    if author && author.authenticate(params[:session][:password])
      reset_session
      log_in author
      redirect_to author
    else
      flash.now[:danger] = "Invalid email/password"
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
