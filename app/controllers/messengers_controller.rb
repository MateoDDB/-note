class MessengersController < ApplicationController

  def new
    @messenger = Messenger.new
  end

  def create
    @messenger = messenger.new(messenger_params)
    if @messenger.save
      respond_to do |format|
        format.html { redirect_to new_messenger_path }
        format.js  # <-- will render `app/views/messengers/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'messengers/new' }
        format.js  # <-- idem
      end
    end
  end

  private

  def messenger_params
    params.require(:messenger).permit(:content)
  end
end
