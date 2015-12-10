class Room < ActiveRecord::Base
  belongs_to :hospital
  has_one :schedule
end
