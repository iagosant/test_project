class LessonsController < ApplicationController
  belongs_to :user
  belongs_to :course
end
