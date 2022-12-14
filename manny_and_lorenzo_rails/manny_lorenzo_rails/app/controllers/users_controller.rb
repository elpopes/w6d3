
class UsersController < ApplicationController
    def index
        # render json: 'rails'
        render plain: "I'm in the index action!"
    end

    def show
        # @user = User.find(params[:id])
        # render json: @user
        render json: params
    end
    # def create
    #     render json: params
    # end

    def create
        @user = Users.new(user_params)
        
        if @user.save
               redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages, status: 422
        end
    end
    #     def update
    #         @user = User.find(params[:id])

    #         if @user.update(user_params)
    #             redirect_to user_url(@user)
    #         else
    #             render json: @user.errors.full_messages, status: 422
    #         end
    #     end

    #     def destroy
    #         @user = User.find(params[:id])
    #         @user.destroy
    #         redirect_to users_url
    #     end
    
   
    #     private
    #     def user_params
    #         params.require(:user).permit(:name, :email)
    #     end

    # end
    


end