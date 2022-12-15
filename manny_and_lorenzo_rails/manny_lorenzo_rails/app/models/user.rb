class User < ApplicationRecord
    validates :user, :email, presence: true, uniqueness: true

    
end