class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable  #, :confirmable, :timeoutable

  has_many :visas
  has_many :requests
  has_many :contracts 
end
