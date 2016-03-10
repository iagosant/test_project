class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :Instructors, id: false do |t|
      t.integer :user_id
      t.integer :Instructor_user_id
    end

    add_index(:Instructors, [:user_id, :Instructor_user_id], :unique => true)
    add_index(:Instructors, [:Instructor_user_id, :user_id], :unique => true)
  end

  def self.down
    remove_index(:Instructors, [:Instructor_user_id, :user_id])
    remove_index(:Instructors, [:user_id, :Instructor_user_id])
    drop_table :Instructors
  end
end
