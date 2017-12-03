class CommentsController < ApplicationController
before_action :find_commentable

  def new

    @comment = Comment.new
    @user = current_user

  end

  def create

    @user = current_user
    @post = @commentable
    @user.increment!('reputation', 1)
    
    respond_to do |format|
      @comment = @commentable.comments.create comment_params     
      format.js
    end
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to(@comment, flash[:alert] = 'Comment was successfully updated.') }
        format.json { respond_with_bip(@comment) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@comment) }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    respond_to do |format|
      
      @comment.destroy
      format.js
    # format.html { redirect_to users_path }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
    @commentable = Question.find_by_id(params[:question_id]) if params[:question_id]
    @commentable = Answer.find_by_id(params[:answer_id]) if params[:answer_id]
  end

end