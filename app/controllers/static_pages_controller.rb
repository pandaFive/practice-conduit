class StaticPagesController < ApplicationController
  def home
    @articles = Article.all.paginate(page: params[:page], per_page: 10)
    @custom_renderer = CustomLinkRenderer.new
  end
end
