class AddReferencesToJob < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :job_execution, foreign_key: true
  end
end
