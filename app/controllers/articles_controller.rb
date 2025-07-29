class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:q].present?
      articles = NewsApi.everything(query: params[:q])["articles"] || []
      @pagy, @articles = pagy_array(articles, items: 10, page: params[:page])
      @headlines = []
    else
      headlines = NewsApi.top_headlines(country: "us")["articles"] || []
      @pagy, @headlines = pagy_array(headlines, items: 10, page: params[:page])
      @articles = []
    end
  end
end
