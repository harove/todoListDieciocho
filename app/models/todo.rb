class Todo < ApplicationRecord
   has_many :usertodos
   has_many :users, through: :usertodos
end
