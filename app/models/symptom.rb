class Symptom < ApplicationRecord
has_many :users, dependent: :destroy
  
end
