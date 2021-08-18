class Todo < ApplicationRecord
  belongs_to :project 
  validates :text, length: { minimum: 3 }, format: {with: /[a-zA-Z]|[а-яА-ЯёЁ]+/}
  
  default_scope { order(id: :asc) }
end
