class PostsController < ApplicationController

#updating index and show
# updating posts controller because the resource we are requesting is related to posts
  def index
    if params[:author_id] #if there is an :author_id in the params hash, user navigated to authors/:id/posts
      @posts = Author.find(params[:author_id]).posts #user accessing index of a post by a certain author
    else
      @posts = Post.all #user accessing index of all posts. user navigated to authors/posts 
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:title, :desription, :post_status, :author_id)
  end
end
