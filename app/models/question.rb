class Question < ApplicationRecord
    validates :description, presence: true
end
