class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :require_user!, only: [ :show ]

  # TODO: Can support this once we have an admin UI.
  # GET /users
  # def index
  #   @users = User.all
  # end

  # GET /users/1
  def show
    if @user.id != current_user.id
      redirect_to '/'
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # TODO: Can support this in the future, if needed.
  # GET /users/1/edit
  # def edit
  # end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      redirect_to @user, notice: "Your user account was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # TODO: Can support this once we have an admin UI.
  # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     redirect_to @user, notice: "User was successfully updated."
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # TODO: Can support this once we have an admin UI.
  # DELETE /users/1
  # def destroy
  #   @user.destroy
  #   redirect_to users_url, notice: "User was successfully destroyed."
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email)
    end
end
