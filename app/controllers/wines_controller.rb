class WinesController < ApplicationController
    def show
        @wine = Wine.find(params[:id])
    end

    def index 
        @wines = Wine.all
    end 

    def new 
        @user = current_user
        @wine = Wine.new
    end 

    def create
        @user = current_user
        @wine = Wine.new(wine_params)
        if @wine.save 
            redirect_to @wine
        else
            render :new 
        end
    end 

    
    def edit
        @user = current_user
        @wine = Wine.find(params[:id])

    end 

    def update 
        @user = current_user
        @wine = Wine.find(params[:id])

        @wine.update(wine_params)

        if @wine.save
            redirect_to @wine
        else
            render :edit
        end

    end 

    private 

    def wine_params
        params.requre(:wine).permit([:wine_name, :vintage, :vineyard, :winemaker, :story, :grape, :region, :style, :alcohol])
    end
end 