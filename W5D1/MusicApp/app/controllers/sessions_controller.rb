class SessionsController < ApplicationController

    def create
      @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

      if @user.nil?
        render json: "wrong credentials"
      else
        log_in_user!(@user)

        redirect user_url(@user)
      end

    end

    def new
      @user = User.new

      render :new
    end

    def destroy


      log_out

      redirect_to new_session_url

    end

end
