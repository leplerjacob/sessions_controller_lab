class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      return redirect_to :login
    end

    session[:name] = params[:name]
    redirect_to :root
  end

  def destroy
    session.delete :name
    redirect_to :root
  end

end
