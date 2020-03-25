class FavoriteCharactersController < ApplicationController

    def index
        render json: FavoriteCharacter.all
    end

    def create  
        FavoriteCharacter.create(favorite_params)
        user =  User.find(params[:user_id])
        render json: user.to_json(serialized_data)
    end

    def destroy
        character = FavoriteCharacter.find(params[:id])
        character.destroy
        user =  User.find(params[:user_id])
        render json: user.to_json(serialized_data)
    end

    private

    def favorite_params
        params.require(:favorite_character).permit(:user_id, :character_id)
    end

    def serialized_data  
        {:except => [:created_at, :updated_at],
          :include =>  [
              :characters => {:except => [:created_at, :updated_at]},
              :spells     => {:except => [:created_at, :updated_at]}
        ]
    }
    end
end
