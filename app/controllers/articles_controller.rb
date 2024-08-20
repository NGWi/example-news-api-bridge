class ArticlesController < ApplicationController
  def index
    data = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search_terms]}&apiKey=#{ENV["N_KEY"]}").parse
    render json: data["articles"].uniq{ |article| article["title"] }
  end
end
