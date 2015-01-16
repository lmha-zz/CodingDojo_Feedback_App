class SurveyResultsController < ApplicationController
  def create
    @surveyresult = Survey.find(params[:survey_id]).survey_results.create(surveyresult_params);
    if !@surveyresult.save
      flash[:errors] = "Helpful rating is a required field.";
      redirect_to :back
    end
  end

  def show
    @all_surveyresults = SurveyResult.all;
    @all_surveyresults_groupedby_surveyid = SurveyResult.all.select("survey_id").distinct.limit(200).order('created_at DESC');
  end

  private
  def surveyresult_params
    params.require(:survey_result).permit(:respondent_name, :helpful_scale, :feedback)
  end
end
