class Beer < ApplicationRecord
#Associations
belongs_to :user

#Validations - should match the database constraints
validates_presence_of :name, :style, :ibu, :alcohol

end
