
class UsersController < ApplicationController
    def index
        # render json: 'rails'
        render plain: "I'm in the index action!"
    end
end