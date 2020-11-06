class Package < ApplicationRecord

    has_many :packageitems
    has_many :items, through: :packageitems

    belongs_to :user

end
