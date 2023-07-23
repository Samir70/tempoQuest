class PractiseStylesController < ApplicationController
  before_action :set_practise_style, only: %i[ show edit update destroy ]

  # GET /practise_styles or /practise_styles.json
  def index
    @practise_styles = PractiseStyle.all
  end

  # GET /practise_styles/1 or /practise_styles/1.json
  def show
  end

  # GET /practise_styles/new
  def new
    @practise_style = PractiseStyle.new
  end

  # GET /practise_styles/1/edit
  def edit
  end

  # POST /practise_styles or /practise_styles.json
  def create
    @practise_style = PractiseStyle.new(practise_style_params)

    respond_to do |format|
      if @practise_style.save
        format.html { redirect_to practise_style_url(@practise_style), notice: "Practise style was successfully created." }
        format.json { render :show, status: :created, location: @practise_style }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @practise_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practise_styles/1 or /practise_styles/1.json
  def update
    respond_to do |format|
      if @practise_style.update(practise_style_params)
        format.html { redirect_to practise_style_url(@practise_style), notice: "Practise style was successfully updated." }
        format.json { render :show, status: :ok, location: @practise_style }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @practise_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practise_styles/1 or /practise_styles/1.json
  def destroy
    @practise_style.destroy

    respond_to do |format|
      format.html { redirect_to practise_styles_url, notice: "Practise style was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practise_style
      @practise_style = PractiseStyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practise_style_params
      params.require(:practise_style).permit(:name, :description)
    end
end
