class Problem < ActiveRecord::Base
  belongs_to :vehicle_model
  has_many :explanations
  acts_as_votable 
end
