class LikesController < ApplicationController

    def create
      like = Like.create(like_params)
      redirect_to like.review
    end
  
    private
  
    def like_params
      params.require(:like).permit(:liked, :review_id, :user_id, user_attributes:[:username])
    end
  end