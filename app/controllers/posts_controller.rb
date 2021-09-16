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
    
    # 投稿が成功すれば一覧へ, 違うなら更新を加えずページに留まる。
    if @post.save
      flash[:notice] = '投稿に成功しました！'
      redirect_to posts_path
    else
      flash.now[:alert] = '※画像と文字の入力(120字以内)が投稿条件です。'
      render :new
    end
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
