class Explanation < ActiveRecord::Base
  belongs_to :problem
  has_many :solutions
end
