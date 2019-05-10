class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
# rails g scaffold_controller articles
# generates controller w/ methods!!
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  # PATCH/PUT /articles/1
  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_path
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :content, :id)
  end
end
