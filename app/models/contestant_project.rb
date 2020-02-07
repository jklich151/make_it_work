class ContestantProject <ApplicationRecord
  belongs_to :challenge
  belongs_to :project
  belongs_to :contestant
end
