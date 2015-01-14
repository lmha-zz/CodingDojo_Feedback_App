class SurveysController < ApplicationController
  def index
    @all_surveys = Survey.all;
  end

  def show
    @survey = Survey.find(params[:survey_id]);
    @surveyresult = @survey.survey_results.build;
  end

end
