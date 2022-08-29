class MypageController < ApplicationController
    def index
        @me = User.find(params[:id])
    end
end
