class User < ActiveRecord::Base
  include RoleModel

  validates :username, rut: true
  validates_uniqueness_of :username, message: "RUT ya se encuentra en el sistema"

  roles_attribute :roles_mascara
  roles :admin, :arrend, :prop

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
