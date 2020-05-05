class ProverbsController < ApplicationController
  before_action :set_proverb, only: [:show, :edit, :update, :destroy]

  # GET /proverbs
  # GET /proverbs.json
  def index
    @proverbs = Proverb.active.alphabetical.paginate(:page => params[:page]).per_page(10)
  end

  # GET /proverbs/1
  # GET /proverbs/1.json
  def show
  end

  # GET /proverbs/new
  def new
    @proverb = Proverb.new
  end

  # GET /proverbs/1/edit
  def edit
  end

  # POST /proverbs
  # POST /proverbs.json
  def create
    @proverb = Proverb.new(proverb_params)

    respond_to do |format|
      if @proverb.save
        format.html { redirect_to @proverb, notice: 'Proverb was successfully created.' }
        format.json { render :show, status: :created, location: @proverb }
      else
        format.html { render :new }
        format.json { render json: @proverb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proverbs/1
  # PATCH/PUT /proverbs/1.json
  def update
    respond_to do |format|
      if @proverb.update(proverb_params)
        format.html { redirect_to @proverb, notice: 'Proverb was successfully updated.' }
        format.json { render :show, status: :ok, location: @proverb }
      else
        format.html { render :edit }
        format.json { render json: @proverb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proverbs/1
  # DELETE /proverbs/1.json
  def destroy
    @proverb.destroy
    respond_to do |format|
      format.html { redirect_to proverbs_url, notice: 'Proverb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proverb
      @proverb = Proverb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proverb_params
      params.require(:proverb).permit(:klingon, :translation, :active)
    end
end
