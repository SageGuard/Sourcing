class MessagesController < ApplicationController
  def new
    @title = "Contact"
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to new_message_path, notice: "Thank you for your message!  You will be contacted shortly."
    else
      render :new, error: "Sorry, something went wrong. Please try again."
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end

end
