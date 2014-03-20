class FilmiesController < ApplicationController
  before_action :set_filmy, only: [:show, :edit, :update, :destroy]

  # GET /filmies
  # GET /filmies.json
  def index
    @filmies = Filmy.all
  end

  # GET /filmies/1
  # GET /filmies/1.json
  def show
  end

  # GET /filmies/new
  def new
    @filmy = Filmy.new
  end

  # GET /filmies/1/edit
  def edit
  end

  # POST /filmies
  # POST /filmies.json
  def create
    @filmy = Filmy.new(filmy_params)

    respond_to do |format|
      if @filmy.save
        format.html { redirect_to @filmy, notice: 'Filmy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @filmy }
      else
        format.html { render action: 'new' }
        format.json { render json: @filmy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filmies/1
  # PATCH/PUT /filmies/1.json
  def update
    respond_to do |format|
      if @filmy.update(filmy_params)
        format.html { redirect_to @filmy, notice: 'Filmy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @filmy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmies/1
  # DELETE /filmies/1.json
  def destroy
    @filmy.destroy
    respond_to do |format|
      format.html { redirect_to filmies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filmy
      @filmy = Filmy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filmy_params
      params.require(:filmy).permit(:nazwa, :gatunek, :rok, :obrazki)
    end
end
