class PagesController < ApplicationController
  def index
    if current_user
      redirect_to teas_path
    else
      redirect_to new_session_path
    end
  end
end
