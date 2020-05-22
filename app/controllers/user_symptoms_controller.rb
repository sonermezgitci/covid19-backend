class UserSymptomsController < ApplicationController
    def index 
        @user_symptoms = UserSymptom.all
        
        render json: @user_symptoms 
    end 

    def show 
    
    @user_symptom = UserSymptom.find(params[:id])
    render json: user_symptom
    
    end 

    
    def create 
        user_symptom  = UserSymptom.new(user_symptoms_params)
        if user_symptoms.save
            render json: user_symptoms
            # json:userSymptoms, status: :accepted 
        else 
            render json: {errors: userSymptoms.error.full_messages}, status: :unprocessible_entity 
        end 
    end 
    
    private 
    def user_symptoms_params
        params.require(:user_symptoms).permit(:id, :user_id, :symptom_id)
    end 
end
