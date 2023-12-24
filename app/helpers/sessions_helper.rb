module SessionsHelper

  def log_in(author)
    session[:author_id] = author.id
  end

  def current_author
    if session[:author_id]
      @current_author ||= Author.find_by(id: session[:author_id])
    end
  end

  def current_author?(author)
    author && author == current_author
  end

  def logged_in?
    !current_author.nil?
  end

  def log_out
    reset_session
    @current_author = nil
  end
end
