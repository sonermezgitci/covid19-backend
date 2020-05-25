class UserSymptomsController < ApplicationController
    def index 
        @user_symptoms = UserSymptom.all
        
        render json: @user_symptoms 
    end 

    def show 
    
    user_symptom = UserSymptom.find(params[:id])
    render json: user_symptom
    
    end 
    
    
    def new 
        @user_sypmtom = UserSymptom.new
        @user_symptom.user.new
        @user_symptom.symptom.new
    end 
    
    def create 
        user_symptom  = @user.UserSymptom.new(user_symptoms_params)
        user_symptom  = @symptom.UserSymptom.new(user_symptoms_params)

        if user_symptoms.save
            render json: user_symptoms
            
        else 
            render json: {errors: userSymptoms.error.full_messages}, status: :unprocessible_entity 
        end 
    end 

    
    private 
    def user_symptoms_params
        params.require(:user_symptoms).permit(:id, :user_id, :symptom_id,user_attributes:[:name, :lastname,:gender,:age,:symptom_id],symptom_attributes: [:fever, :cough, :breath, :throat, :nose, :other, :user_id], quarantines_attributes: [:start_dates,:end_dates :user_id])
    end 
end
