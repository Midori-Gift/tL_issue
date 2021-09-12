class PostCommentsController < ApplicationController
  
  def create
    select_post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_id = select_post.id
    comment.save
    redirect_to post_path(select_post)
    
  end
  
  def destroy
    PostComment.find_by(id: params[:post_id]).destroy
    redirect_to post_path(params[:id])
  end
  
  private
  
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
end
