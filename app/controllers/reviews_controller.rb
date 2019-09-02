class ReviewsController < ApplicationController
    def index 
        @user = current_user
        @reviews = Review.all 
    end 

    def show 
        @user = current_user
        @review = Review.find(params[:id])
    end 

    def new 
        @wine = Wine.find_by_id(params[:wine_id])
        @user = current_user
       if @wine = Wine.find_by_id(params[:wine_id])
        @review = @wine.reviews.build 
       else 
        @review = Review.new
       end 
        
        
        
    end 

    def create 

       
        @user = current_user
        
        
        @review = current_user.reviews.build(review_params)
        

        if @review.save 
            
            redirect_to review_path(@review)
        else
            render :new 
        end
    end 

    def edit
        @user = current_user

    end 

    def update 
        @user = current_user
    end 

    def destroy 
        @user = current_user
    end 

    private 

    def review_params
        params.require(:review).permit([:title, :description, :user_id, :wine_id, :fruit, :tannin, :body, :balance, :acidity, :flavors, :other, :color, :taste, :balance_rating, :wine_experience, :someone_else_like, :total])
    end

   





end