class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.string :respondent_name
      t.integer :helpful_scale
      t.text :feedback
      t.references :survey, index: true

      t.timestamps
    end
  end
end
