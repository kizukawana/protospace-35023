class CommentsController < ApplicationController
  def create
    # binding.pry
    @comment = Comment.create(comment_params)
    # binding.pry
    if @comment.save
       redirect_to prototype_path(@comment.prototype.id)
    else
        @prototype = @comment.prototype
        @comments = @prototype.comments
        render "prototypes/show"
    end
  end

private
def comment_params
  params.require(:comment).permit(:text).merge(prototype_id: params[:prototype_id], user_id: current_user.id)
end

end
