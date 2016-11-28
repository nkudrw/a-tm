class BlogsController < ApplicationController
    before_action :set_blog, only: [:show,:update]
  def index
      @blogs = Blog.all
      @blog = Blog.new
  end

  def create
   @blog = Blog.new(blogs_params)
   @blog.save
    redirect_to blogs_path
  end

  def show
    @reply = @blog.replies.build
    @replies = @blog.replies
  end

  private
   def blogs_params
     params.require(:blog).permit(:body)
   end

   def set_blog
   @blog = Blog.find(params[:id])
  end
end
