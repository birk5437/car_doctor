class Solution < ActiveRecord::Base
  belongs_to :explanation
  acts_as_votable 
end
