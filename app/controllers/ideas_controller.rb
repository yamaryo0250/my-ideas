class IdeasController < ApplicationController
  def index
  end

  def new  
    @category_idea = CategoryIdea.new
  end

  def create
    # @category = Category.create(category_params)
    # @idea = Idea.create(idea_params)
    # redirect_to root_path
    @category_idea = CategoryIdea.new(idea_params)
    if @category_idea.valid?
      @category_idea.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  
  # def category_params
  #   params.permit(:name)
  # end

  def idea_params
    params.require(:category_idea).permit(:name, :body)
  end

end
