class Marker < ApplicationRecord
  belongs_to :subcategory
  belongs_to :type
end
