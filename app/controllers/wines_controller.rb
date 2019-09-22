class WinesController < ApplicationController
    before_action :user_not_logged_in
    
    def show
        @wine = Wine.find(params[:id])
        @wine_reviews = @wine.reviews
    end

    def index 
        if params[:rose] == 'rose'
            @wines = Wine.rose
        else
            @wines = Wine.all
        end 
    end 

    def new 
        @wine = Wine.new
    end 

    def create
        @wine = Wine.new(wine_params)
        if @wine.save 
            #redirect_to @wine
            #temporary below
            redirect_to wine_path(@wine)
        else
            render :new 
        end
    end 

    
    def edit
        @wine = Wine.find(params[:id])
    end 

    def update 
        @wine.update(wine_params)
        if @wine.save
            redirect_to @wine
        else
            render :edit
        end
    end 

    

    private 

    def wine_params
        params.require(:wine).permit([:wine_name, :vintage, :vineyard, :winemaker, :story, :grape, :region, :style, :alcohol])
    end

end 