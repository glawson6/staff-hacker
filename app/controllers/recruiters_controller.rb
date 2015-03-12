class RecruitersController < ApplicationController

  before_action :set_recruiter, only: [:show, :update, :destroy]
  before_action :signed_in_user

  # GET /recruiters
  # GET /recruiters.json
  def index
    @recruiters = Recruiter.all

    render json: @recruiters
  end

  # GET /recruiters/1
  # GET /recruiters/1.json
  # t.string   "first_name"
  # t.string   "last_name"
  # t.integer  "company_id"
  # t.string   "image_url"
  def show

   # render json: @recruiter{:first_name @recruiter.first_name,  :last_name @}
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

  def search
    puts 'We are authenticated'
    # recruiter_search = params[:search]
    # all_recruiters = []
    # named_recruiters = Recruiter.where(name: recruiter_search[:name]) if recruiter_search[:name]
    # puts "named_recruiters => #{named_recruiters}"
    # named_recruiters.each{|recruiter| all_recruiters << recuiter} if named_recruiters
    # companies = Company.where(name: recruiter_search[:company_name]) if recruiter_search[:company_name]
    # company_recruiters = companies.recruiters if (companies && companies.length > 0)
    # company_recruiters.each{|recruiter| all_recruiters << recuiter} if company_recruiters
    # recruiter_map = all_recruiters.map{|recruiter| {name: recruiter.name, company_name: recruiter.company.name, website: recruiter.company.website}}
    # puts recruiter_map
    # render json: recruiter_map
    render json: Recruiter.all
  end

  private

    def set_recruiter
      @recruiter = Recruiter.find(params[:id])
    end

    def recruiter_params
      params.require(:recruiter).permit(:name, :company_id)
    end
end
