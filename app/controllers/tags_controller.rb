class TagsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy 
    @answer = Answer.find(params[:id])
    @answer.tag_list.remove(params[:tag_name])
    @answer.save
    p params[:tag_name]

    # respond_to do |format| #we are expecting a certain call
    #   @tag = ActsAsTaggableOn::Tag.find(params[:id]).destroy
    #   format.js
    # end
  end
  private
  
  def set_tag
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
  end

  def tag_params
    params.require(:acts_as_taggable_on_tag).permit(:id, :name, :tag_name)
  end
end
