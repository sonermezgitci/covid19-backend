class User < ApplicationRecord
has_many :user_symptoms
has_many :symptoms , through: :user_symptoms
has_many :quarantines
end