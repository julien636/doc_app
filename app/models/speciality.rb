class Speciality < ApplicationRecord
  has_many :jointabledoctorspecialities
  has_many :doctors, through: :jointabledoctorspecialities
end
