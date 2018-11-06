class StaticPagesController < ApplicationController
  def home
  end

  def help
    @user = User.all
  	unless logged_in?
        store_location
        flash[:danger] = "Please Log in or Sign in."
        redirect_to home_path
    end
  end

  def about
  end

  def contact
  end
end
