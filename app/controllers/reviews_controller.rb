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
        @user = current_user
    end 

    def create 
        @user = current_user
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

    def






end