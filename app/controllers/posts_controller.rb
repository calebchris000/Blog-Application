class PostsController < ApplicationController
  def index
    @focused_user = Author.find(params[:author_id])
    @total_posts = @focused_user.posts
  end

  def new
    # The logic for the new forms
  end

  def create
    @new_post = current_user.posts.build(post_params)
    if @new_post.save
      redirect_to "/authors/#{current_user.id}/posts", notice: 'Post created successfully!'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @total_comments = @post.comments
    @current_user = @post.author
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :author_id)
  end
end
