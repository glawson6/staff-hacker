class Recruiter < ActiveRecord::Base
  has_many :ratings
  belong_to :company
end
