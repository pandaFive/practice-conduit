class AuthorsController < ApplicationController
  def edit
  end

  def show
    @author = Author.find(params[:id])
    @articles = @author.articles.paginate(page: params[:page], per_page: 10)
    @custom_renderer = CustomLinkRenderer.new
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      reset_session
      log_in @author
      flash[:success] = "ユーザー登録しました。"
      redirect_to root_url
    else
      render "new", status: :unprocessable_entity
    end
  end

  private
    def author_params
      params.require(:author).permit(:name, :email, :password)
    end
end
