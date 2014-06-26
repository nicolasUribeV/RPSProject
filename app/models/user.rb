class User < ActiveRecord::Base
  validates :username, rut: true, message: "RUT Invalido"
  validates_uniqueness_of :username, message: "RUT ya se encuentra en el sistema"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
