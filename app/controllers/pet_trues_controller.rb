class PetTruesController < ApplicationController
  before_action :set_pet_true, only: [:show, :edit, :update, :destroy]

  # GET /pet_trues
  # GET /pet_trues.json
  def index
    @pet_trues = PetTrue.all
  end

  # GET /pet_trues/1
  # GET /pet_trues/1.json
  def show
  end

  # GET /pet_trues/new
  def new
    @pet_true = PetTrue.new
  end

  # GET /pet_trues/1/edit
  def edit
  end

  # POST /pet_trues
  # POST /pet_trues.json
  def create
    @pet_true = PetTrue.new(pet_true_params)

    respond_to do |format|
      if @pet_true.save
        format.html { redirect_to @pet_true, notice: 'Pet true was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pet_true }
      else
        format.html { render action: 'new' }
        format.json { render json: @pet_true.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_trues/1
  # PATCH/PUT /pet_trues/1.json
  def update
    respond_to do |format|
      if @pet_true.update(pet_true_params)
        format.html { redirect_to @pet_true, notice: 'Pet true was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pet_true.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_trues/1
  # DELETE /pet_trues/1.json
  def destroy
    @pet_true.destroy
    respond_to do |format|
      format.html { redirect_to pet_trues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_true
      @pet_true = PetTrue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_true_params
      params.require(:pet_true).permit(:name, :age, :kind, :gender, :size, :story, :city, :country, :region, :user_id, :institution_id)
    end
end
