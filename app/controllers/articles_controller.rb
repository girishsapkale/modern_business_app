class ArticlesController < ApplicationController
  # def index
  # end

  # def new
  # end

  # def edit
  # end

  # def show
  # end

  # def create
  # end

  # def delete
  # end

  # def update
  # end


  def index
    @articles = Article.all
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)

    @article.avatar_file_name = params[:article][:avatar_file_name]
  
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :body, :avatar_file_name)
    end
end
