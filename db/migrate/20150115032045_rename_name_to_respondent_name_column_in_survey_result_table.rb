class RenameNameToRespondentNameColumnInSurveyResultTable < ActiveRecord::Migration
  def change
    rename_column :survey_results, :name, :respondent_name
  end
end
