class Employee < ApplicationRecord
  validates :name, :presence => true
  has_many :team_employees
end
