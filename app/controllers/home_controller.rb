class HomeController < ApplicationController
    skip_before_action :user_not_logged_in
    def index 
        @user = User.find_by(id: params[:id])
    end 

end