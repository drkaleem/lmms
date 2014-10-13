class AbMastersController < ApplicationController
  before_action :set_ab_master, only: [:show, :edit, :update, :destroy]

  # GET /ab_masters
  # GET /ab_masters.json
  def index
    @ab_masters = AbMaster.all
  end

  # GET /ab_masters/1
  # GET /ab_masters/1.json
  def show
  end

  # GET /ab_masters/new
  def new
    @ab_master = AbMaster.new
  end

  # GET /ab_masters/1/edit
  def edit
  end

  # POST /ab_masters
  # POST /ab_masters.json
  def create
    @ab_master = AbMaster.new(ab_master_params)

    respond_to do |format|
      if @ab_master.save
        format.html { redirect_to @ab_master, notice: 'Ab master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_masters/1
  # PATCH/PUT /ab_masters/1.json
  def update
    respond_to do |format|
      if @ab_master.update(ab_master_params)
        format.html { redirect_to @ab_master, notice: 'Ab master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_masters/1
  # DELETE /ab_masters/1.json
  def destroy
    @ab_master.destroy
    respond_to do |format|
      format.html { redirect_to ab_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_master
      @ab_master = AbMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_master_params
      params.require(:ab_master).permit(:membercode, :salutation, :firstname, :middlename, :lastname, :type, :dob, :group, :subgroup1, :subgroup2, :inactive, :status)
    end
end
