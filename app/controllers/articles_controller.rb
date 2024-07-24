class ArticlesController < ApplicationController
  def custom_index
    @articles = Article.all
  end

  def custom_show
    @article = Article.find(params[:id])
  end

  def custom_destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/"
  end

  def custom_create
    @article = Article.new(title: params[:title], body: params[:body])
    if @article.save
      path_to = "/custom_show/#{@article.id}"
      puts path_to
      redirect_to path_to
    else
      render :custom_new
    end
  end

  def custom_new
  end

  def custom_edit
    @article = Article.find(params[:id])
  end

  def custom_update
    @article = Article.find(params[:id])
    if @article.update(title: params[:title], body: params[:body])
      redirect_to "/custom_show/#{@article.id}"
    else
      render :custom_edit
    end
  end



end
