class SessionController < ApplicationController
require 'http'

  def new
  end

  def create

    @http_response = Http.post("http://localhost:3000/auth.json", json: {email: params[:email], password: params[:password]})

    @user = JSON.parse(@http_response)

  end

  def destroy
    session[:name] = nil 
    redirect_to root_path
  end


end
