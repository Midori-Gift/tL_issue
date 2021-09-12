class FavoritesController < ApplicationController
  
  def create
    select_post = Post.find(params[:post_id])
    favorite = current_user.favorites.new(post_id: select_post.id)
    favorite.save
    redirect_to post_path(select_post)
  end
  
  def destroy
    select_post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(post_id: select_post.id)
    favorite.destroy
    redirect_to post_path(select_post)
  end
  
end
