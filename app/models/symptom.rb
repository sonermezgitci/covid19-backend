class Symptom < ApplicationRecord
  has_many :user_symptoms
  has_many :users, through: :user_symptoms
  
end
