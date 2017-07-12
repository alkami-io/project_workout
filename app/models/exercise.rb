class Exercise < ApplicationRecord
  #
  ## Relationships and Associations
  has_and_belongs_to_many :routines


  #
  ## ENUMS
  enum muscle_group: [:shoulders, :biceps, :triceps, :chest, :back, :abs, :legs]
end
