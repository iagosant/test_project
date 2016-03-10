class User < ActiveRecord::Base
  has_and_belongs_to_many :students,
  class_name: "User",
  join_table: :students,
  foreign_key: :user_id,
  association_foreign_key: :student_user_id

  has_and_belongs_to_many :Instructor,
  class_name: "User",
  join_table: :Instructors,
  foreign_key: :user_id,
  association_foreign_key: :Instructor_user_id

end
