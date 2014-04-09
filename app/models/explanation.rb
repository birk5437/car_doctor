class Explanation < ActiveRecord::Base
  belongs_to :problem
  has_many :solutions
  acts_as_votable 
end
