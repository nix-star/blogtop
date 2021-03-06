class TagsController < ApplicationController  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to tag_path
  end
end
