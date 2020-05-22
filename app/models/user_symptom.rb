class UserSymptom < ApplicationRecord
    belongs_to :user
    belongs_to :symptom

    accepts_nested_attributes_for :user
    accepts_nested_attributes_for :symptom
end
