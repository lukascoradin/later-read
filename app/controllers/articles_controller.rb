class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:q].present?
      articles = NewsApi.everything(query: params[:q])
      @pagy, @articles = pagy_array(articles, limit: params[:limit], page: params[:page])
      @headlines = []
    else
      headlines = NewsApi.top_headlines(country: "us")
      @pagy, @headlines = pagy_array(headlines, limit: params[:limit], page: params[:page])
      @articles = []
    end
  end
end
