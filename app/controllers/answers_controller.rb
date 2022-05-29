class AnswersController < ApplicationController
    def destroy
        answer = Answer.find(params[:id])
        question = answer.question
        if answer
            answer.destroy
        end
        redirect_to edit_question_path(question)
    end
end
