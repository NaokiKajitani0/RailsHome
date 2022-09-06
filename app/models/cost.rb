class Cost < ApplicationRecord
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :costsfile, presence: true  
  mount_uploader :costsfile, CostsfileUploader
end
