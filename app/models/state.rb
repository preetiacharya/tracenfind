class State < ActiveRecord::Base

  has_many :districts
  has_many :rtos

  validates_presence_of :name, :code
  validates_uniqueness_of :name, :code
end
