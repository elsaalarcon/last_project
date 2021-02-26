class AddLuckyNumberToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :lucky_number, :integer
  end
end
