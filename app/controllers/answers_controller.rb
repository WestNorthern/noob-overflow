class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    respond_to do |format|
     @answer = current_user.answers.create(answer_params)
     current_user.increment!('reputation', 15)
     Pony.mail(:to => @answer.question.user.email, :from => 'NoobOverflow@noob.com',
     :subject => 'Your question has been answered by ' +  @answer.user.username, :body => @answer.content)
     format.js
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    respond_to do |format|
      if @answer.update_attributes(answer_params)
        format.html { redirect_to(@answer, :notice => 'Answer was successfully updated.') }
        format.json { respond_with_bip(@answer) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@answer) }
      end
    end
  end

  def destroy
    respond_to do |format| #we are expecting a certain call
      @answer = Answer.find(params[:id]).destroy
      format.js
    end
  end
  private 
  
  def answer_params
    params.require(:answer).permit(:content, :question_id, :tag_list)
  end
end

