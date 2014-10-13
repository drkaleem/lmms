class AbChaptersController < ApplicationController
  before_action :set_ab_chapter, only: [:show, :edit, :update, :destroy]

  # GET /ab_chapters
  # GET /ab_chapters.json
  def index
    @ab_chapters = AbChapter.all
  end

  # GET /ab_chapters/1
  # GET /ab_chapters/1.json
  def show
  end

  # GET /ab_chapters/new
  def new
    @ab_chapter = AbChapter.new
  end

  # GET /ab_chapters/1/edit
  def edit
  end

  # POST /ab_chapters
  # POST /ab_chapters.json
  def create
    @ab_chapter = AbChapter.new(ab_chapter_params)

    respond_to do |format|
      if @ab_chapter.save
        format.html { redirect_to @ab_chapter, notice: 'Ab chapter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ab_chapter }
      else
        format.html { render action: 'new' }
        format.json { render json: @ab_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_chapters/1
  # PATCH/PUT /ab_chapters/1.json
  def update
    respond_to do |format|
      if @ab_chapter.update(ab_chapter_params)
        format.html { redirect_to @ab_chapter, notice: 'Ab chapter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ab_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_chapters/1
  # DELETE /ab_chapters/1.json
  def destroy
    @ab_chapter.destroy
    respond_to do |format|
      format.html { redirect_to ab_chapters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_chapter
      @ab_chapter = AbChapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_chapter_params
      params.require(:ab_chapter).permit(:abmaster_id, :effectivedate, :chapter, :subchapter)
    end
end
