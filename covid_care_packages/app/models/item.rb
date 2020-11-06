class Item < ApplicationRecord

    has_many :packages
    has_many :users, through: :packages

    has_many :packageitems
    has_many :packages, through: :packageitems

end
