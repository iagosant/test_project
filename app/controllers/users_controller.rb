class UsersController < ApplicationController
  has and belongs_to_many :self-referential_association
  has_many :lessons
  has and belongs_to_many :courses
end
