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

  def create
    @tag = Tag.new
    @tag.restaurant_id = params[:restaurant_id]
    @tag.user_id = params[:user_id]
    @tag.wordtag = params[:wordtag]

    if @tag.save
      redirect_to "/tags", :notice => "Tag created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])

    @tag.restaurant_id = params[:restaurant_id]
    @tag.user_id = params[:user_id]
    @tag.wordtag = params[:wordtag]

    if @tag.save
      redirect_to "/tags", :notice => "Tag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tag = Tag.find(params[:id])

    @tag.destroy

    redirect_to "/tags", :notice => "Tag deleted."
  end
end
