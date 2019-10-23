class Collection < ApplicationRecord

    has_many :stories, dependent: :destroy

end
