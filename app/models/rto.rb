class Rto < ActiveRecord::Base

  belongs_to :state
  belongs_to :district

  validates_presence_of :code, :vehicle_number, :registration_office, :address, :phone_number, :district_id, :state_id
end
