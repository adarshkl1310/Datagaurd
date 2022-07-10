class Team < ApplicationRecord
  validates :name, :presence => true 
  validates :restaurant_name, :presence => true    
  has_many :team_employees
  has_many :employees, through: :team_employees
  belongs_to :employee
end
