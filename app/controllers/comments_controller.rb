class CommentsController < ApplicationController
  def index; end

  def new; end

  def create
    @current_author = Author.find(params[:author_id])
    @current_post = Post.find(params[:post_id])
    @new_comment = @current_post.comments.build(text: params[:comment][:text], author_id: params[:author_id],
                                                post_id: params[:post_id])

    if @new_comment.save
      redirect_to author_posts_path
    else
      render :new
    end
  end
end
