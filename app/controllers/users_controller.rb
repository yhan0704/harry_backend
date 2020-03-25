class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json(serialized_data)
    end
    
    def show
        user =  User.find(params[:id])
        render json: user.to_json(serialized_data)
    end

    def create
      user = User.create(user_params)
      found_user = User.find_by id: user.id
      render json: found_user.to_json(serialized_data)
    end


    private

    def serialized_data  
        {
            :except => [:created_at, :updated_at],
            :include =>  [
              :characters => {:except => [:created_at, :updated_at]},
              :spells     => {:except => [:created_at, :updated_at]}
            ]
        }
    end

    def user_params
        params.require(:user).permit(:name, :house)
    end

end
