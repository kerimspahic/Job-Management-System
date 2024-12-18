class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]

  # GET /jobs or /jobs.json
  def index
    @jobs = Job.all

    if params[:search_by_title].present?
      @jobs = @jobs.where("job_title LIKE ?", "%#{params[:search_by_title]}%")
    end

    if params[:search_by_location].present?
      @jobs = @jobs.where("location LIKE ?", "%#{params[:search_by_location]}%")
    end

    if params[:search_by_type].present?
      @jobs = @jobs.where(job_type: params[:search_by_type])
    end

    @jobs = @jobs.page(params[:page]).per(5)
  end

  # GET /jobs/1 or /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.destroy!

    respond_to do |format|
      format.html { redirect_to jobs_path, status: :see_other, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.expect(job: [ :company_name, :job_title, :job_description, :location, :job_type, :salary, :application_deadline ])
    end
end
