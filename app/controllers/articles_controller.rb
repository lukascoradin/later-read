class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @headlines = pagy_array(NewsApi.top_headlines(country: "us")["articles"], page: params[:page], limit: params[:limit])

    if params[:q].present?
      @pagy, @search_results = pagy_array(NewsApi.everything(query: params[:q])["articles"], page: params[:page], limit: params[:limit])
    else
      @search_results = nil
    end
  end
end
