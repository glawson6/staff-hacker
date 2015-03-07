class Rating < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :user
end
