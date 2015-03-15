# Recruiters Controller

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
    render json: { first_name: @recruiter.first_name,  last_name:
                   @recruiter.last_name, company_id: @recruiter.company.name,
                   image_url: @recruiter.image_url, ratings: @recruiter.ratings,
                   average: recruiter_rating_average(@recruiter.id) }
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
    recruiter_search = params[:search]
    name = params[:search][:name].downcase if params[:search][:name]

    # Create where clause for Recruiter model search
    name_where = " LOWER(last_name) LIKE '%#{name}%' OR LOWER(first_name) LIKE
    '%#{name}%'" if name
    # Create where clause for Company model search
    company_name_where = " LOWER(name) LIKE '%#{name}%'" if name

    # Create all_recruiters array. We don't know if we will have results in
    # Recruiters or Companies, but we will dump all results into this array
    all_recruiters = []
    named_recruiters = Recruiter.where(name_where) if name_where
    puts "named_recruiters => #{named_recruiters}"
    # Populate recruiters found in recruiter model if there are any results
    named_recruiters.each { |recruiter| all_recruiters << recruiter } if
    named_recruiters
    companies = Company.where(company_name_where) if company_name_where
    # Populate recruiters found in Company model if there are any results.
    # Each company will have an array of recruiters.
    # We will have to iterate over every company and then iterate over
    # every recruiter found in each company
    # Only add recruiter if it is not in all_recruiter array
    company_recruiters = companies.each{|company|
    company.recruiters.each{|recruiter| all_recruiters << recruiter unless
    all_recruiters.include? recruiter} } if companies
    # Create map for JSON output
    recruiter_map = all_recruiters.map{|recruiter|
      { id: recruiter.id, image_url: recruiter.image_url,
        first_name: recruiter.first_name, last_name: recruiter.last_name,
        company_name: recruiter.company.name,
        website: recruiter.company.website,
        average: recruiter_rating_average(recruiter.id) }}
    puts recruiter_map

    render json: recruiter_map
  end

  def recruiter_rating_average(id)
    recruiter = Recruiter.find(id) if id
    recruiter.ratings.average(:rate) if recruiter
  end

  private

  def set_recruiter
    @recruiter = Recruiter.find(params[:id])
  end

  def recruiter_params
    params.require(:recruiter).permit(:name, :company_id)
  end
end
