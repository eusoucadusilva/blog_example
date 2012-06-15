class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    @post.publish
    flash[:notice] = t(:you_succesfully_published_a_post)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end
end