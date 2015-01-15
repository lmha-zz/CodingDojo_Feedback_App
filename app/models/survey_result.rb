class SurveyResult < ActiveRecord::Base
  belongs_to :survey

  validates :helpful_scale, presence: true
end
