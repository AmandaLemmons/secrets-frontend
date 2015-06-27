class SecretsController < ApplicationController

  def create
      @response = Http.post("http://localhost:3000/secrets.json", json: {secret:{title: params[:secret][:title], comment: params[:secret][:comment], created_at: params[:secret][:created_at]}})
  end

  def index
  end



end
