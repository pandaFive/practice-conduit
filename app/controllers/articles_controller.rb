class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      @feed_item = current_user.feed.paginate(page: params[:page])
      render "static_pages/home", status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])
    @author = Author.find(id: @article.author_id)
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :content)
    end
end
