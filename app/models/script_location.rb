class ScriptLocation < ApplicationRecord
  belongs_to :project
  has_many :script_locations_locations
  has_many :locations, through: :script_locations_locations
  #accepts_nested_attributes_for :locations
end
