class SymptomSerializer < ActiveModel::Serializer
  attributes :fever, :cough, :breath, :throat, :nose, :other

end
