class SurveyResultsController < ApplicationController
  def create
  end

  private
  def surveyresult_params
    params.require(:surveyresult).permit(:name, :helpful_score, :feedback)
  end
end
