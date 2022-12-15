
require 'byebug'
class UsersController < ApplicationController
    def index
        render json: User.all
        # render json: params
    
    
    end


    def show
        @user = User.find(params[:id])
        render json: @user
        # render json: params
    end
    # def create
    #     render json: params
    # end

    def create

        @user = User.new(user_params)
        
        if @user.save
            render json: @user
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        
    end


    private
    def user_params
        params.require(:user).permit(:name, :email)
    end


    


end