class ContributorsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit, :destroy]
  before_action :set_contributor, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  	@contributor = Contributor.new
  end

  def create
  	@contributor = Contributor.new(contributor_params)

    respond_to do |format|
      if @contributor.save
        format.html { redirect_to @contributor, notice: 'contributor was successfully created.' }
        format.json { render :show, status: :created, location: @contributor }
      else
        format.html { render :new }
        format.json { render json: @contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def show
  end

  def destroy
  	@contributor.destroy
    respond_to do |format|
      format.html { redirect_to contributors_url, notice: 'Contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributor
      @contributor = Contributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contributor_params
      params.require(:contributor).permit(:name, :email, :bio, :avatar)
    end

end
