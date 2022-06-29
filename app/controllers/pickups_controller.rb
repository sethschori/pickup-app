class PickupsController < ApplicationController
  before_action :set_pickup, only: %i[ show edit update destroy ]
  before_action :require_user!

  # GET /pickups
  def index
    # TODO: When building admin UI will need to change this approach.
    @pickups = current_user.pickups
  end

  # GET /pickups/1
  def show
  end

  # GET /pickups/new
  def new
    @pickup = Pickup.new
  end

  # GET /pickups/1/edit
  def edit
  end

  # POST /pickups
  def create
    @pickup = Pickup.new(user: current_user, **pickup_params)

    if @pickup.save
      redirect_to @pickup, notice: "Pickup was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pickups/1
  def update
    if @pickup.update(pickup_params)
      redirect_to @pickup, notice: "Pickup was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /pickups/1
  def destroy
    @pickup.destroy
    redirect_to pickups_url, notice: "Pickup was successfully deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup
      # TODO: When building admin UI will need to change this approach.
      @pickup = current_user.pickups.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pickup_params
      params.require(:pickup).permit(
        :user_id,
        :pickup_date,
        :location_name,
        :street_address,
        :city,
        :state,
        :country,
        :status
      )
    end
end
