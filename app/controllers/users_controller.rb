class UsersController < ApplicationController
    skip_before_action :user_not_logged_in, only: [:new, :create]
    
    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
      
      if @user.valid?
        @user.save
        
        session[:user_id] = @user.id
        
        redirect_to user_path(@user)
      else
        render :new
      end
    end 

    def show
        
        @user = User.find_by(id: params[:id]) 
        @reviews = Review.all
        @review = Review.find_by_id(params[:id])

    end

    def index 
        
        @users = User.all    

    end 

    def edit
       @user = current_user
        
    end
    
    def update
     
        @user = current_user   
        @user.update(email: params[:user][:email], favorite_wine: params[:user][:favorite_wine])
        redirect_to user_path(@user)
         
    end

    def user_params
        params.require(:user).permit([:username, :password, :email, :favorite_wine])
        #all attrib must be here or they won't be saved
    end

end 