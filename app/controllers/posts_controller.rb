class PostsController < ApplicationController
  def index
    @focused_user = Author.find(params[:id])
    @total_posts = @focused_user.posts
  end

  def new
  # The logic for the new forms
  end
  def create
    @new_post = current_user.posts.build(post_params)
  if @new_post.save
    redirect_to "/authors/#{current_user.id}/posts", notice: "Post created successfully!"
  else
    render :new
  end

  end

  def show
    @post = Post.find(params[:id])
    @total_comments = @post.comments
    @current_user = @post.author
  end

  def like
  @get_current_post = params[:id]
  @get_current_post_author = params[:author_id]
  @likes = Post.find(@get_current_post)
  @likes.likes_counter += 1
  @likes.save
  redirect_to "/authors/#{@get_current_post_author}/posts"
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :text, :id)
  end
end
