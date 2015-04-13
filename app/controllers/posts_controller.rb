class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :update, :show, :destroy]

  def index
  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end

  def show
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:id, :title, :content)
  end


end
