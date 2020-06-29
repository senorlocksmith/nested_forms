class Location < ApplicationRecord
    has_many :script_locations_locations
    has_many :script_locations, through: :script_locations_locations
    #accepts_nested_attributes_for :script_locations
end
