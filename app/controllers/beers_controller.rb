class BeersController < ApplicationController
  # this is how you skip before action in rails
  # skip_before_action  :authenticate_user, only: [:index]
  before_action :set_beer, except: [:index, :new, :create]

  def index
    @beers = current_user.beers
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def set_beer
      # OLD nonscoped way - @beer = Beer.find(params[:id])
      @beer = current_user.beers.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :style, :ibu, :alcohol)
    end

end
