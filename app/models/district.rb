class District < ActiveRecord::Base

  belongs_to :state
  has_many :rtos

  validates_presence_of :name, :state_id
end
