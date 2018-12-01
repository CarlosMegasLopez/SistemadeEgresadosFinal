class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  layout 'userinterface'
  before_action :authenticate_user!

  # GET /articles
  # GET /articles.json
  def index
    if params[:category_id]
      @articles = Article.where(:category_id => params[:category_id]).ultimos.page(params[:page]).per_page(8)
    else
      @articles = Article.search(params[:search]).ultimos.page(params[:page]).per_page(8) #este era el unico aqui
    end

    authorize Article #Restriccion

  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    authorize @article #Restriccion
  end

  # GET /articles/new
  def new
    @article = Article.new
    authorize @article
  end

  # GET /articles/1/edit
  def edit
    authorize @article
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'La Noticia ha sido creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'La Noticia ha sido actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'La Noticia ha sido eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:user_id, :category_id, :titulo_noticia, :cuerpo_noticia, :imagen_noticia)
    end
end
