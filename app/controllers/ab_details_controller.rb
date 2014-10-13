class AbDetailsController < ApplicationController
  before_action :set_ab_detail, only: [:show, :edit, :update, :destroy]

  # GET /ab_details
  # GET /ab_details.json
  def index
    @ab_details = AbDetail.all
  end

  # GET /ab_details/1
  # GET /ab_details/1.json
  def show
  end

  # GET /ab_details/new
  def new
    @ab_detail = AbDetail.new
  end

  # GET /ab_details/1/edit
  def edit
  end

  # POST /ab_details
  # POST /ab_details.json
  def create
    @ab_detail = AbDetail.new(ab_detail_params)

    respond_to do |format|
      if @ab_detail.save
        format.html { redirect_to @ab_detail, notice: 'Ab detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_details/1
  # PATCH/PUT /ab_details/1.json
  def update
    respond_to do |format|
      if @ab_detail.update(ab_detail_params)
        format.html { redirect_to @ab_detail, notice: 'Ab detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_details/1
  # DELETE /ab_details/1.json
  def destroy
    @ab_detail.destroy
    respond_to do |format|
      format.html { redirect_to ab_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_detail
      @ab_detail = AbDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_detail_params
      params.require(:ab_detail).permit(:abmaster_id, :effectivedate, :addressline1, :addressline2, :addressline3, :city, :state, :zipcode, :country, :invalid)
    end
end
