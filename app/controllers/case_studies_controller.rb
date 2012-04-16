class CaseStudiesController < ApplicationController
  # GET /case_studies
  # GET /case_studies.json
  layout "admin", :except => [:index, :show]
  add_breadcrumb "home", "/"
  
  def index
    
    @case_studies = CaseStudy.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @case_studies }
    end
    add_breadcrumb "index", case_studies_path
  end

  # GET /case_studies/1
  # GET /case_studies/1.json
  def show
    @case_study = CaseStudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @case_study }
    end
  end
  
end
