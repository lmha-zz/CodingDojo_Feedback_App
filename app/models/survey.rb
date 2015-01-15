class Survey < ActiveRecord::Base
  has_many :survey_results

  validates :title, presence: true
  validates :author, presence: true
end
