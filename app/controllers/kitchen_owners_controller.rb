class KitchenOwnersController < ApplicationController
  before_action :set_kitchen_owner, only: %i[ show edit update destroy ]

  # GET /kitchen_owners or /kitchen_owners.json
  def index
    @kitchen_owners = KitchenOwner.all
  end

  # GET /kitchen_owners/1 or /kitchen_owners/1.json
  def show
  end

  # GET /kitchen_owners/new
  def new
    @kitchen_owner = KitchenOwner.new
  end

  # GET /kitchen_owners/1/edit
  def edit
  end

  # POST /kitchen_owners or /kitchen_owners.json
  def create
    @kitchen_owner = KitchenOwner.new(kitchen_owner_params)

    respond_to do |format|
      if @kitchen_owner.save
        format.html { redirect_to kitchen_owner_url(@kitchen_owner), notice: "Kitchen owner was successfully created." }
        format.json { render :show, status: :created, location: @kitchen_owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kitchen_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchen_owners/1 or /kitchen_owners/1.json
  def update
    respond_to do |format|
      if @kitchen_owner.update(kitchen_owner_params)
        format.html { redirect_to kitchen_owner_url(@kitchen_owner), notice: "Kitchen owner was successfully updated." }
        format.json { render :show, status: :ok, location: @kitchen_owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kitchen_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchen_owners/1 or /kitchen_owners/1.json
  def destroy
    @kitchen_owner.destroy

    respond_to do |format|
      format.html { redirect_to kitchen_owners_url, notice: "Kitchen owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_owner
      @kitchen_owner = KitchenOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kitchen_owner_params
      params.require(:kitchen_owner).permit(:kitchen_name, :string, :kitchen_mail, :kitchen_number, :kitchen_adress)
    end
end
