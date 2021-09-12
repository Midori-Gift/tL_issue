class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def index
    # Post.allとほぼ同義、違いはページャが利用可能になるところ
    @post = Post.page(params[:page]).reverse_order
  end
  
  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def create
    @post = Post.new(post_params)
    
    # 投稿者が分かるようにユーザーidを与える
    @post.user_id = current_user.id
    
    @post.save
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private
  
  # ブログ投稿用データ ストロングパラメータ
  def post_params
    params.require(:post).permit(:sentence, :image, :user_id)
  end
  
end
