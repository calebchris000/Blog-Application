class PostsController < ActionController::Base
  before_action :set_global_variable

  def index
    @total_posts = Post.where(author_id: @current_user_id)
  end

  def show
    @focused_user_id = params[:author_id].to_i
    @current_post_id = params[:id].to_i
    @focused_post = Post.where(id: @current_post_id)
    @total_comments = Comment.where(post_id: @current_post_id)
  end

  def set_global_variable
    @current_user_id = params[:id].to_i
    @current_user = Author.find(@current_user_id)
  end
end
