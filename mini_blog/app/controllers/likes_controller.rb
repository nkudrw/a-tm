class LikesController < ApplicationController
    def create
    @like = Like.new(blog_id: params[:blog_id])
    @like.save
     redirect_to blogs_path
      end
end
