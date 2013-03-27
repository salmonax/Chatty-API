class MessagesController < ApplicationController
  def create
    message = Message.create(params[:message])
    if message.save
      render :json => message, :status => :created
    else
      render :json => message.errors, :status => :unprocessable_entity
    end
  end

  def index
    messages = Message.all
    render :json => messages
  end
end