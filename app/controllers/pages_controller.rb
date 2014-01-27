class PagesController < ApplicationController
  before_filter 'authorize', only: :index
  def index
    redirect_to teas_path
  end
end
