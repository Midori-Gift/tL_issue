class PostCommentsController < ApplicationController
  
  def create
    select_post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.select_post = select_post.id
    comment.save
    redirect_to post_path(select_post)
    
  end
  
  def destroy
    select_post = Post.find(params[:id])
    select_post.comment.destroy
    redirect_to post_path(select_post.id)
  end
  
  private
  
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
end
