class UsersController < ApplicationController
    
    def index 
        @users = User.all
        render json: @users, status: :accepted 
        # render json: UserSerializer.new(users)// when i uncomment this its also gives me error 
        #  for  get request for fetch  users but in the class they told us to render # json: UserSerializer.new(users)
    end 


    def show 
        @user = User.find(params[:id])
        render json: @user
        #  only: [:id, :name, :lastname, :gender, :age], include: {symptoms: {only: [:id, :fever, :cough, :tiredness]}}
    end 
    
    def create 
        user = User.new(user_params)
        # byebug
        if user.save
            render json: user, status: :accepted 
            # UserSerializer.new(@user), status: :accepted doesnt make fetch 
            
        else 
            render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    private 
    def  user_params
        params.require(:user).permit(:name, :lastname, :age, :gender, symptoms_attributes: [:fever, :cough, :breath, :throat, :nose, :other, :user_id], quarantines_attributes: [:days, :user_id])
    end 
end
