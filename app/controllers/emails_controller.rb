class EmailsController < ApplicationController
  def create
    @email = Email.create(address: params[:email])

    # email the user with that email...

    render json: @email
  end
end
