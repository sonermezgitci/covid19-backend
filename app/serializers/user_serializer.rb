class UserSerializer < ActiveModel::Serializer
  attributes :id,:name, :lastname, :age, :gender 
  has_many :symptoms
  has_many :quarantines  
end
