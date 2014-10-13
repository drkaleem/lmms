class AbMaster < ActiveRecord::Base
  has_many :abchapters, dependent: :destroy
  has_many :abdetails, dependent: :destroy
  has_many :abemails, dependent: :destroy
  has_many :abphones, dependent: :destroy
  has_many :abrelationships, dependent: :destroy
end
