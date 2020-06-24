class QuarantinesController < ApplicationController
    def index
        @quarantines = Quarantine.all
        render json: @quarantines
    end 

 
def show 
    @quarantine = Quarantine.find(params[:id])
    render json: @quarantine
 end 
 end