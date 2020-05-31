class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    signup = Signup.new(email: signup_params[:email])
    if signup.save
      redirect_to root_path, notice: "You've been added to our newsletter!"
    else
      redirect_to root_path, notice: 'Sorry, there was a problem.'
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:email)
  end
end
