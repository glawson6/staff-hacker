class Recruiter < ActiveRecord::Base
  has_many :ratings
  belongs_to :company
end
