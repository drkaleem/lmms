class AbEmailsController < ApplicationController
  before_action :set_ab_email, only: [:show, :edit, :update, :destroy]

  # GET /ab_emails
  # GET /ab_emails.json
  def index
    @ab_emails = AbEmail.all
  end

  # GET /ab_emails/1
  # GET /ab_emails/1.json
  def show
  end

  # GET /ab_emails/new
  def new
    @ab_email = AbEmail.new
  end

  # GET /ab_emails/1/edit
  def edit
  end

  # POST /ab_emails
  # POST /ab_emails.json
  def create
    @ab_email = AbEmail.new(ab_email_params)

    respond_to do |format|
      if @ab_email.save
        format.html { redirect_to @ab_email, notice: 'Ab email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_emails/1
  # PATCH/PUT /ab_emails/1.json
  def update
    respond_to do |format|
      if @ab_email.update(ab_email_params)
        format.html { redirect_to @ab_email, notice: 'Ab email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_emails/1
  # DELETE /ab_emails/1.json
  def destroy
    @ab_email.destroy
    respond_to do |format|
      format.html { redirect_to ab_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_email
      @ab_email = AbEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_email_params
      params.require(:ab_email).permit(:abmaster_id, :effectivedate, :emailtype, :emailid, :preferred, :invalid)
    end
end
