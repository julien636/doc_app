class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :specialities
  belongs_to :city, optional: true
  has_many :jointabledoctorspecialities
  has_many :specialities, through: :jointabledoctorspecialities
end
