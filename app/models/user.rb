class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable, :confirmable

  #
  ## Relationships and Associations
  has_many :routines
end
