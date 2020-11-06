class User < ApplicationRecord

    has_many :packages
    has_many :items, through: :packages

end
