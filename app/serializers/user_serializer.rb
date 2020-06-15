class UserSerializer < ActiveModel::Serializer
  attributes :id,:name, :lastname, :age, :gender #if you use symptoms and quarantines here as instance it will noy use serializer
  has_many :symptoms #this one uses the Serializer for symptoms
  has_many :quarantines  #this one uses the Serializer for quarantines
end
