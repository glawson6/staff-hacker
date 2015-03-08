class RecruitersController < ApplicationController
  before_action :set_recruiter, only: [:show, :update, :destroy]

  # GET /recruiters
  # GET /recruiters.json
  def index
    @recruiters = Recruiter.all

    render json: @recruiters
  end

  def search
    @recruiter = Recruiter.find_by(name: params[:search][:name])

    render json: @recruiter
  end

  # GET /recruiters/1
  # GET /recruiters/1.json
  def show
    render json: @recruiter
  end

  # POST /recruiters
  # POST /recruiters.json
  def create
    @recruiter = Recruiter.new(recruiter_params)

    if @recruiter.save
      render json: @recruiter, status: :created, location: @recruiter
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recruiters/1
  # PATCH/PUT /recruiters/1.json
  def update
    @recruiter = Recruiter.find(params[:id])

    if @recruiter.update(recruiter_params)
      head :no_content
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recruiters/1
  # DELETE /recruiters/1.json
  def destroy
    @recruiter.destroy

    head :no_content
  end

  private

    def set_recruiter
      @recruiter = Recruiter.find(params[:id])
    end

    def recruiter_params
      params.require(:recruiter).permit(:name, :company_id)
    end
end
