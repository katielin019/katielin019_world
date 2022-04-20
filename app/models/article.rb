class Article < ApplicationRecord
    has_one :category
    validates_presence_of :content
    validates_presence_of :title

    scope :alphabetical,  -> { order(:title) }
    scope :active,     -> { where(active: true) }
end
