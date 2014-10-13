class AbRelationshipsController < ApplicationController
  before_action :set_ab_relationship, only: [:show, :edit, :update, :destroy]

  # GET /ab_relationships
  # GET /ab_relationships.json
  def index
    @ab_relationships = AbRelationship.all
  end

  # GET /ab_relationships/1
  # GET /ab_relationships/1.json
  def show
  end

  # GET /ab_relationships/new
  def new
    @ab_relationship = AbRelationship.new
  end

  # GET /ab_relationships/1/edit
  def edit
  end

  # POST /ab_relationships
  # POST /ab_relationships.json
  def create
    @ab_relationship = AbRelationship.new(ab_relationship_params)

    respond_to do |format|
      if @ab_relationship.save
        format.html { redirect_to @ab_relationship, notice: 'Ab relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_relationships/1
  # PATCH/PUT /ab_relationships/1.json
  def update
    respond_to do |format|
      if @ab_relationship.update(ab_relationship_params)
        format.html { redirect_to @ab_relationship, notice: 'Ab relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_relationships/1
  # DELETE /ab_relationships/1.json
  def destroy
    @ab_relationship.destroy
    respond_to do |format|
      format.html { redirect_to ab_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_relationship
      @ab_relationship = AbRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_relationship_params
      params.require(:ab_relationship).permit(:abmaster_id, :relatedto_id, :relationtype)
    end
end
