class AddFilenameToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :student_image, :string
    add_column :students, :file, :string
  end
end
