class CommentsController < ApplicationController
  
  before_filter :set_post, only: [:create]
  #Estos metodos no se van a utilizar
   
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id,@comment.user_id = params[:post_id], current_user.id
    if @comment.save!
      flash[:notice] = "Your comment has been added"
      redirect_to [@post] 
    else
      flas[:notice]= "Sorry, something was wrong, your comment has been not saved"
      render template: "posts/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
   @post = Post.find(params[:post_id])
  end

end
