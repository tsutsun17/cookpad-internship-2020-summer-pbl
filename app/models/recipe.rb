class Recipe < ApplicationRecord
    # TODO(Tatsuemon): 厳重なvalidation
    # validation
    validates :title, presence: true
    validates :description, presence: true
    validates :step, presence: true

    has_many :recipe_tags, dependent: :destroy
    has_many :tags, through: :recipe_tags

    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients
end