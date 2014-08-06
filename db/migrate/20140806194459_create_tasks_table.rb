class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.datetime :due_date
      t.integer :task_list_id
    end
  end
end
