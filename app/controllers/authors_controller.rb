class AuthorsController < ApplicationController

  def index
    # Where the index logic goes
    @authors = Author.all
    @author_posts = Post.all
  end

  def show
    @current_user_id = params[:id].to_i
    @current_user = Author.find(@current_user_id)
    @total_posts = Post.where(author_id: @current_user.id)
    @current_user_bio = @current_user.bio

    # Where the show logic goes
  end
end
