
class ReviewsController < ApplicationController
    def index 
        @user = User.find_by(id: params[:id])
        @reviews = Review.all 
        
        @review = Review.find_by_id(params[:id])
    end 

    def show 
        @review = Review.find_by_id(params[:id])
    end 

    def new         
        if params[:wine_id] && @wine = Wine.find_by_id(params[:wine_id])
            @review = @wine.reviews.build
          else
            @review= Review.new
            @review.build_wine
          end
    end 

    def create       
        @wine = Wine.find_by_id(params[:wine_id])
        @review = current_user.reviews.build(review_params)

        if @review.save 
            redirect_to review_path(@review)
        else
            render :new 
        end
    end 

    def edit
        @user = current_user
        @review = Review.find(params[:id])
    end 
       
    def like 
        @review = Review.find(params[:id])
        type = params[:type]
        if type == "like"
            
            current_user.likes << @review
            

        elsif type == "unlike"
            current_user.likes.delete(@review)
             

        else
            # Type missing, nothing happens
             
        end
    end
       


    def update 
        @review = Review.find(params[:id])
        @wine = Wine.find_by_id(params[:id])
        @wine_review = @review.wine_id

        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            render :edit
        end
    end 

    def destroy 
        @user = current_user
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to user_path(@user)
    end

    private 

    def review_params
        params.require(:review).permit([:title, :description, :user_id, :wine_id, :fruit, :tannin, :body, :balance, :acidity, :flavors, :other, :color, :taste, :balance_rating, :wine_experience, :someone_else_like, :total])
    end


end 