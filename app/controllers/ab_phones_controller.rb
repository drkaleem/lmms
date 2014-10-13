class AbPhonesController < ApplicationController
  before_action :set_ab_phone, only: [:show, :edit, :update, :destroy]

  # GET /ab_phones
  # GET /ab_phones.json
  def index
    @ab_phones = AbPhone.all
  end

  # GET /ab_phones/1
  # GET /ab_phones/1.json
  def show
  end

  # GET /ab_phones/new
  def new
    @ab_phone = AbPhone.new
  end

  # GET /ab_phones/1/edit
  def edit
  end

  # POST /ab_phones
  # POST /ab_phones.json
  def create
    @ab_phone = AbPhone.new(ab_phone_params)

    respond_to do |format|
      if @ab_phone.save
        format.html { redirect_to @ab_phone, notice: 'Ab phone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_phone }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_phones/1
  # PATCH/PUT /ab_phones/1.json
  def update
    respond_to do |format|
      if @ab_phone.update(ab_phone_params)
        format.html { redirect_to @ab_phone, notice: 'Ab phone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_phones/1
  # DELETE /ab_phones/1.json
  def destroy
    @ab_phone.destroy
    respond_to do |format|
      format.html { redirect_to ab_phones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_phone
      @ab_phone = AbPhone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_phone_params
      params.require(:ab_phone).permit(:abmaster_id, :effectivedate, :phonetype, :phonenum, :preferred, :invalid)
    end
end
