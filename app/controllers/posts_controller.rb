class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    respond_to do |format| 
      @post = Post.find(params[:id]).destroy
      format.js
      format.html {redirect_to posts_path}
    end
  end
  
  private 
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end

