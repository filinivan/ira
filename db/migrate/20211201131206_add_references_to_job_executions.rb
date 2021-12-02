class AddReferencesToJobExecutions < ActiveRecord::Migration[6.1]
  def change
     add_reference :job_executions, :job, null: false, foreign_key: true
     add_reference :job_executions, :user, null: false, foreign_key: true
     add_reference :job_executions, :division, null: false, foreign_key: true
  end
end
