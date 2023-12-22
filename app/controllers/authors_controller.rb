class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:info] = "ユーザー登録しました。"
      redirect_to root_url
    else
      render "new", status: :unprocessable_entity
    end
  end

  private
    def author_params
      params.require(:author).permit(:name, :email, :password, :password_confirmation)
    end
end
