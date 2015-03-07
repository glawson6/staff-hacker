class Recruiter < ActiveRecord::Base
  has_many :ratings
  has_one :company
end
