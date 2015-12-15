class Room < ActiveRecord::Base
  belongs_to :hospital
  has_one :schedule
  has_many :queu_es
end
