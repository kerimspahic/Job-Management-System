class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :job_title
      t.text :job_description
      t.string :location
      t.integer :job_type, default:0
      t.decimal :salary
      t.date :application_deadline

      t.timestamps
    end
  end
end
