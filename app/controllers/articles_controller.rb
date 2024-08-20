class ArticlesController < ApplicationController
  def index
    data = HTTP.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=#{ENV["N_KEY"]}").parse
    render json: data["articles"]
  end
end
