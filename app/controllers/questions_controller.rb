class QuestionsController < ApplicationController
    def new
    end

    #def edit
    #end

    def index
        @questions = Question.all
    end

    def update
        @question = Question.new(params.require(:question).permit(:description, :text))

        if @question.save
            redirect_to @question
        else
            render 'edit'
        end
    end

    def create
        @question = Question.new(params.require(:question).permit(:description, :text))
        
        if @question.save
            redirect_to @question
        else
            render 'new'
        end
    end

    def show
        @question = Question.find(params[:id])
    end
end