class Contestant <ApplicationRecord
  validates_presence_of :name, :age, :hometown, :experience
  has_many :projects
end
