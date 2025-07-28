class SavedArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @saved_articles = current_user.saved_articles
  end

  def create
    @saved_article = current_user.saved_articles.new(saved_article_params)

    if @saved_article.save
      redirect_to root_path, notice: "Artigo salvo!"
    else
      redirect_to root_path, alert: "Não foi possível salvar."
    end
  end

  def destroy
    @saved_article = current_user.saved_articles.find(params[:id])
    @saved_article.destroy!
    redirect_to saved_articles_path, notice: "Removido da lista."

  end

  private

  def saved_article_params
    params.require(:saved_article).permit(:title, :url)
  end
end
