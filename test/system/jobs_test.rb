require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "should create job" do
    visit jobs_url
    click_on "New job"

    fill_in "Application deadline", with: @job.application_deadline
    fill_in "Company name", with: @job.company_name
    fill_in "Job description", with: @job.job_description
    fill_in "Job title", with: @job.job_title
    fill_in "Job type", with: @job.job_type
    fill_in "Location", with: @job.location
    fill_in "Salary", with: @job.salary
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "should update Job" do
    visit job_url(@job)
    click_on "Edit this job", match: :first

    fill_in "Application deadline", with: @job.application_deadline
    fill_in "Company name", with: @job.company_name
    fill_in "Job description", with: @job.job_description
    fill_in "Job title", with: @job.job_title
    fill_in "Job type", with: @job.job_type
    fill_in "Location", with: @job.location
    fill_in "Salary", with: @job.salary
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "should destroy Job" do
    visit job_url(@job)
    click_on "Destroy this job", match: :first

    assert_text "Job was successfully destroyed"
  end
end
