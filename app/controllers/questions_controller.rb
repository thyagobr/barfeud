class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    question = Question.create(title: params[:question][:title])
    answer = question.answers.create(title: params[:answer][:title])
    redirect_to edit_question_path(question)
  end

  def edit
    @question = Question.includes(:answers).find(params[:id])
    @answers = @question.answers
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    @question.answers.upsert(answer_params)
    redirect_to edit_question_path(@question)
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end

  def answer_params
    params.require(:question).require(:answers_attributes).permit(:id, :title)
  end
end
