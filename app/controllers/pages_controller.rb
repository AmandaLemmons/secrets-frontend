class PagesController < ApplicationController


  def dashboard
    @secrets = JSON.parse Http.get("http://localhost:3000/secrets.json")

    token = session[:token]

    @name = session[:name]

    response = Http.post("http://localhost:3000/users.json?token=#{token}")
    if response.code != 200
    end


  end


end
