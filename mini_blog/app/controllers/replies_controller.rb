class RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @blog = @reply.blog
      @reply.save
    redirect_to blog_path(@blog)
  end

  private
    # ストロングパラメーター
    def reply_params
      params.require(:reply).permit(:blog_id, :comment)
    end

end
