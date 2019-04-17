class NotemsController < ApplicationController
  def index
    @notems = Notem.order(created_at: :desc)
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
    if @notem.update(notem_params)
      redirect_to notem_path(@notem)
    else
      render :edit
    end
  end

  private

  def notem_params
    params.require(:notem).permit(:title,:description,:importance)
  end
end
