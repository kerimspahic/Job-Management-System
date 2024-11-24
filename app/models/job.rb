class Job < ApplicationRecord
  enum :job_type, {
    full_time: 0,
    part_time: 1,
    contract: 2,
    freelance: 3
  }
end
