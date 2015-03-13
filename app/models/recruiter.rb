class Recruiter < ActiveRecord::Base
  has_many :ratings
  belongs_to :company

  def to_s
    "{id => #{@id}, first_name => #{@first_name}, last_name=> #{last_name}}"
  end
end
