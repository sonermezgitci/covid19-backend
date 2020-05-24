class User < ApplicationRecord
has_many :user_symptoms
has_many :symptoms #, through: :user_symptoms
has_many :quarantines

accepts_nested_attributes_for :symptoms
accepts_nested_attributes_for :quarantines
end
