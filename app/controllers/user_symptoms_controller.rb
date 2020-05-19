class UserSymptomsController < ApplicationController
    def index 
        @user_symptoms = User_symptom.all
        render json: @user_symptoms 
    end 

    def show 
    
    @user_symptom = User_symptom.find(params[:id])
    render json: @user_symptom
    
    end 

    
    def create 
        user_symptom  = User_symptom.new(userSymptoms_params)
        if user_symptoms.save
            render json: user_symptoms
            # json:userSymptoms, status: :accepted 
        else 
            render json: {errors: user_symptoms.error.full_messages}, status: :unprocessible_entity 
        end 
    end 
    
    private 
    def user_symptoms_params
        params.require(:user_symptoms).permit(:id, :user_id, :symptom_id)
    end 
end
