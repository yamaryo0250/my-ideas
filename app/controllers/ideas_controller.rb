class IdeasController < ApplicationController
  def index
  end

  def new  
  end

  def create
    @category = Category.create(category_params)
    @idea = Idea.create(idea_params)
    redirect_to root_path
  end


  private
  
  def category_params
    params.permit(:name)
  end

  def idea_params
    params.permit(:body).merge(category_id: @category.id)
  end

end
