class User < ApplicationRecord

    validates :name, :email, :username, presence: true
    validates :email, :username, uniqueness: {case_sensitive: false}

    has_many :packages
    has_many :items, through: :packages

end
