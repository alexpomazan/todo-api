class Project < ApplicationRecord
  validates :title, length: { minimum: 3 }, format: {with: /[a-zA-Z]|[а-яА-ЯёЁ]+/}

  has_many :todos
end
