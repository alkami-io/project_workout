class Routine < ApplicationRecord
  #
  ## Relationships and Associations
  belongs_to :user

  has_and_belongs_to_many :exercises

end
