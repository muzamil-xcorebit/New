class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @posts
    else
      render'new'
    end

  end



  private
  def post_params
    params.require(:post).permit(:name, :body)
  end

end