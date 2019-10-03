class LikesController < ApplicationController
    before_action :user_not_logged_in

    def index
        if params[:review_id]
            @review = Review.find_by(id: params[:review_id])
            @likes = @review.liked_by.uniq           
        else       
            @liked_reviews = LikedReview.all
            
            @likes = @liked_reviews.uniq{|details| details.user_id}
           
            
        end 
    end

end 