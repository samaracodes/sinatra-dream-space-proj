class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    #making sure these prevent saving or creating anything in the database
    #if the conditions are not met. 


    has_many :dream_posts
end