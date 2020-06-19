class User < ApplicationRecord
has_many :symptoms 
has_many :quarantines

accepts_nested_attributes_for :symptoms
accepts_nested_attributes_for :quarantines

end
