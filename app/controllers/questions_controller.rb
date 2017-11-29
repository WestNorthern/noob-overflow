class QuestionsController < ApplicationController

  def index
    @user = current_user
    @questions = Question.all
    @question = Question.new
  end


  def new
    @question = Question.new
    @user = current_user 
  end


  # def create
  #   respond_to do |format|
  #     @user = current_user
  #     @question = @user.questions.create(question_params)
  #     format.js
  #   end
  # end

  def create
    @user = current_user
    @question = @user.questions.create(question_params)
    redirect_to @question
  end

  def show
    @user = current_user
    @answers = Answer.all
    @question = Question.find(params[:id])
  end


  def edit
    @question = Question.find(params[:id])
  end


  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to @question
  end


  def destroy
    Question.find(params[:id]).destroy
    redirect_to questions_path
  end


  private


  def question_params
    params.require(:question).permit(:title, :content)
  end

  
end
