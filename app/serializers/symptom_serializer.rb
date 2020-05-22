class SymptomSerializer < ActiveModel::Serializer
  attributes :user_id, :fever, :cough, :breath, :throat, :nose, :other

end
