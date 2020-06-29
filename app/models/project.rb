class Project < ApplicationRecord
    has_many :script_locations, dependent: :destroy
end
