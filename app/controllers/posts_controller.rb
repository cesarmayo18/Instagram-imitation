class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all

    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end
end
