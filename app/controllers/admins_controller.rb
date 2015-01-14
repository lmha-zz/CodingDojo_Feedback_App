class AdminsController < ApplicationController
  def index
  end

  def create
    @survey = Survey.new;
    @all_surveyresults = SurveyResult.all;
    @all_surveyresults_groupedby_surveyid = SurveyResult.all.group(:survey_id);
  end

  def show
  end
end
