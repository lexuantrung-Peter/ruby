class HomeController < ActionController::Base
  def index
    @posts = Post.where("title LIKE ? OR content LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    render
  end
end
