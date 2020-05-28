class UserSymptomsController < ApplicationController
    def index 
        @user_symptoms = UserSymptom.all
        
        render json: @user_symptoms 
    end 

    def show 
    
    user_symptom = UserSymptom.find(params[:id])
    render json: user_symptom
    
    end 
    
    
    
    def create 
        user_symptom  = @user.UserSymptom.new(user_symptoms_params)
        

        if user_symptoms.save
            render json: user_symptoms
            
        else 
            render json: {errors: userSymptoms.error.full_messages}, status: :unprocessible_entity 
        end 
    end 

    
    private 
    def user_symptoms_params
        params.require(:user_symptoms).permit(:id,:user_id,:symptom_id,symptoms_attributes: [:fever, :cough, :breath, :throat, :nose, :other, :user_id],user_attributes: [:name, :lastname, :age, :gender],symptoms_attributes:[user_symptoms_attributes:[:id,:user_id,:symptom_id]])
    end
end 