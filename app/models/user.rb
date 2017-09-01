class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Associations
  has_many :beers, dependent: :destroy

  #Instance Methods
    #current_user.cut_off?
  def cut_off?
    beers.count > 25 ? true : false
  end

  #Class Methods
  #Callbacks

end
