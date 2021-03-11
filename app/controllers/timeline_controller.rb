class TimelineController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user 

    def index
        @followings = @user.favorites.find_all
        @rooms = Room.find_each 

        @rooms_to_show = []
        @followings.each do |following|
            @rooms.each do |room|
                if room.user_id == following.favoritable_id || room.user_id == current_user.id 
                    @rooms_to_show << room 
                end 
            end 
        end 
        
    end 

    private
    def find_user
        @user = User.find(current_user.id)
    end 
end
