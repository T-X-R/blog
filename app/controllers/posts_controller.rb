class PostsController < ApplicationController
  def index
    @posts = Post.all #把post表里的所有东西都拿出来
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to@post
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
params.require(:post).permit(:title, :body)
  end
end
