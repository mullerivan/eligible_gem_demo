class CreateEnrollment < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :name, limit: 100
    end
  end
end
