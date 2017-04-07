class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])
    @posts.update(post_param)
    redirect_to posts_path
  end

  def new
  @posts = Post.new
  end

  def create
  post = Post.create(post_param)
  redirect_to posts_path
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to posts_path
  end

  private
  def post_param
    params.require(:post).permit(:name, :content)
  end
end
