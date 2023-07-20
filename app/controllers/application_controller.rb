class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authorize
      unless logged_in?
        redirect_to root_path
      end
    end
  end
