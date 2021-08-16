class Todo < ApplicationRecord
  belongs_to :project 

  default_scope { order(id: :asc) }
end
