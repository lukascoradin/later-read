class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @headlines = NewsApi.top_headlines(country: "us")

    if params[:q].present?
      @search_results = NewsApi.everything(query: params[:q])
    else
      @search_results = nil
    end
  end
end
