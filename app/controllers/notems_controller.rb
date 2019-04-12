class NotemsController < ApplicationController
  def index
    @notems = Notem.all
  end

  def show
    @notem = Notem.find(params[:id])
  end

  def new
    @notem = Notem.new
  end

  def create
    @notem = Notem.new(notem_params)
    @notem.save
    redirect_to notems_path
  end

  def edit
    @notem = Notem.find(params[:id])
  end

  def update
    @notem = Notem.find(params[:id])
    if @notem.uptdate(notem_params)
      render :show
    else
      render :edit
    end
  end

  private

  def notem_params
    params.require(:notem).permit(:title,:description,:importance)
  end
end
