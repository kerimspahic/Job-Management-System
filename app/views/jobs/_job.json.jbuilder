json.extract! job, :id, :company_name, :job_title, :job_description, :location, :job_type, :salary, :application_deadline, :created_at, :updated_at
json.url job_url(job, format: :json)
