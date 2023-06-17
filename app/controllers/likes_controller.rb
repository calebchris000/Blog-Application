class LikesController < ApplicationController
  def index; end

  def new; end

  def create
    @get_current_post = params[:post_id]
    @get_current_post_author = params[:author_id]
    @likes = Post.find(@get_current_post)
    @likes.likes_counter += 1
    @likes.save
    redirect_to author_posts_path
  end
end
