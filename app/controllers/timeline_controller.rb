class TimelineController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user 

    def index
    end 

    private
    def find_user
        @user = User.find(current_user.id)
    end 
end
