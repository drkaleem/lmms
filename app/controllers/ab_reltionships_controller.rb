class AbReltionshipsController < ApplicationController
  before_action :set_ab_reltionship, only: [:show, :edit, :update, :destroy]

  # GET /ab_reltionships
  # GET /ab_reltionships.json
  def index
    @ab_reltionships = AbReltionship.all
  end

  # GET /ab_reltionships/1
  # GET /ab_reltionships/1.json
  def show
  end

  # GET /ab_reltionships/new
  def new
    @ab_reltionship = AbReltionship.new
  end

  # GET /ab_reltionships/1/edit
  def edit
  end

  # POST /ab_reltionships
  # POST /ab_reltionships.json
  def create
    @ab_reltionship = AbReltionship.new(ab_reltionship_params)

    respond_to do |format|
      if @ab_reltionship.save
        format.html { redirect_to @ab_reltionship, notice: 'Ab reltionship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_reltionship }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_reltionship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_reltionships/1
  # PATCH/PUT /ab_reltionships/1.json
  def update
    respond_to do |format|
      if @ab_reltionship.update(ab_reltionship_params)
        format.html { redirect_to @ab_reltionship, notice: 'Ab reltionship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_reltionship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_reltionships/1
  # DELETE /ab_reltionships/1.json
  def destroy
    @ab_reltionship.destroy
    respond_to do |format|
      format.html { redirect_to ab_reltionships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_reltionship
      @ab_reltionship = AbReltionship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_reltionship_params
      params.require(:ab_reltionship).permit(:abmaster_id, :relatedto_id, :relationtype)
    end
end
