class StaticPagesController < ApplicationController
  def home
    @author = current_author
    if @author
      @your_articles = @author.articles.paginate(page: params[:page], per_page: 10)
    end
    @articles = Article.all.paginate(page: params[:page], per_page: 10)
    @custom_renderer = CustomLinkRenderer.new
  end
end
