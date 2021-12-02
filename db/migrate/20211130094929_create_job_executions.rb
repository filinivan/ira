class CreateJobExecutions < ActiveRecord::Migration[6.1]
  def change
    create_table :job_executions do |t|
      t.text :explanation
      t.boolean :urgent
      t.boolean :closed

      t.timestamps
    end
  end
end
