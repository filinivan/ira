class JobExecution < ApplicationRecord
  belongs_to :job
  belongs_to :user
  belongs_to :division

end
