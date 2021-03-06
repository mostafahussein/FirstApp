class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attributes
  # Setup accessible (or protected) attributes for your model
  attr_accessible :id, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  # Map OZBPerson <-> User
  alias_attribute :Mnr, :id

  # Associations
  has_many :Sonderberechtigung, :foreign_key => :id
end
