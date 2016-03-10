class CoursesController < ApplicationController
  has and belongs_to_many :users
  has_many :lessons
  belongs_to :user
end
