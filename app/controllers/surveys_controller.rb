class SurveysController < ApplicationController
  def index
    @all_surveys = Survey.where("created_at > ?", 30.minutes.ago);
  end

  def show
    @survey = Survey.find(params[:survey_id]);
    @surveyresult = @survey.survey_results.build;
  end

  def create
    @survey = Survey.new(survey_params)
    @password = params[:commit]
    if(@password != 'codingdojo')
      flash[:errors] = 'Password entered is incorrect, survey was not created.';
    else
      if @survey.save
        flash[:success] = "Survey Successfully created.";
      else
        flash[:errors] = @survey.errors.full_messages
      end
    end
    redirect_to create_path
  end

  private
  def survey_params
    params.require(:survey).permit(:title, :author)
  end

end
