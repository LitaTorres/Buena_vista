class Department < ApplicationRecord
  belongs_to :client
  belongs_to :building
  belongs_to :state
end
