class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    # @post = Post.where(:id => params[:id]).first
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.name = params[:name]
    @post.image_url = params[:image_url]
    @post.content = params[:content]
    
    if @post.save # success
      redirect_to '/posts'
    else
      render :edit
    end    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.name = params[:name]
    @post.image_url = params[:image_url]
    @post.content = params[:content]
    
    if @post.save # success
      redirect_to '/posts'
    else
      render :new
    end

  end

end