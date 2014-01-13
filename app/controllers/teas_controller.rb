class TeasController < ApplicationController

  before_filter 'authorize'

  def index
    @teas = Tea.all
  end

  def new
    @tea = Tea.new
  end

  def create
    @tea = Tea.new(tea_params)
    @tea.save
    redirect_to @tea
  end

  def show
    @tea = Tea.find params[:id]
  end

  def edit
    @tea = Tea.find params[:id]
  end

  def update
    @tea = Tea.find(params[:id])

    if @tea.update(params[:tea].permit(:name, :description))
      redirect_to @tea
    else
      render 'edit'
    end
  end

  def destroy
    @tea = Tea.find params[:id]
    @tea.destroy
    redirect_to teas_path
  end

  private

  def tea_params
    params.require(:tea).permit(:name, :description)
  end
end
