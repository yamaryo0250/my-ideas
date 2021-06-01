class CategoryIdea
  include ActiveModel::Model
  attr_accessor :name, :body, :category_id

  with_options presence: true do
    validates :name, uniqueness: true
    validates :body
    validates :category_id
  end

  def save
    category = Category.create(name: name)
    Idea.create(body: body, category_id: category.id)
  end
end